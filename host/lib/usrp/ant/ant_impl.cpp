//
// Copyright 2012-2015 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#include "ant_impl.hpp"
#include "ant_regs.hpp"
#include "uhd/cal/database.hpp"
#include "uhd/config.hpp"
#include "uhd/exception.hpp"
#include "uhd/transport/usb_control.hpp"
#include "uhd/usrp/dboard_eeprom.hpp"
#include "uhd/utils/cast.hpp"
#include "uhd/utils/log.hpp"
#include "uhd/utils/paths.hpp"
#include "uhd/utils/safe_call.hpp"
#include "uhd/utils/static.hpp"
#include <boost/filesystem.hpp>
#include <boost/format.hpp>
#include <boost/functional/hash.hpp>
#include <boost/lexical_cast.hpp>
#include <chrono>
#include <cmath>
#include <cstdio>
#include <ctime>
#include <functional>
#include <memory>


#include "uhd/transport/if_addrs.hpp"
#include "uhd/utils/byteswap.hpp"
#include <arpa/inet.h>
/* if windows #include<Winsock2.h> */
#include "uhd/transport/udp_zero_copy.hpp"
#include <boost/asio/ip/address_v4.hpp>

using namespace uhd;
using namespace uhd::usrp;
using namespace uhd::usrp::gpio_atr;
using namespace uhd::transport;

namespace {
constexpr int64_t REENUMERATION_TIMEOUT_MS = 3000;
}


class antsdr_ad9361_client_t : public ad9361_params
{
public:
    ~antsdr_ad9361_client_t() override {}
    double get_band_edge(frequency_band_t band) override
    {
        switch (band) {
            case AD9361_RX_BAND0:
                return 0; // Set these all to
            case AD9361_RX_BAND1:
                return 0; // zero, so RF port A
            case AD9361_TX_BAND0:
                return 0; // is used all the time
            default:
                return 0; // On both Rx and Tx
        }
    }
    clocking_mode_t get_clocking_mode() override
    {
        return clocking_mode_t::AD9361_XTAL_N_CLK_PATH;
    }
    digital_interface_mode_t get_digital_interface_mode() override
    {
        return AD9361_DDR_FDD_LVCMOS;
    }
    digital_interface_delays_t get_digital_interface_timing() override
    {
        digital_interface_delays_t delays;
        delays.rx_clk_delay  = 0;
        delays.rx_data_delay = 0xF;
        delays.tx_clk_delay  = 0;
        delays.tx_data_delay = 0xF;
        return delays;
    }
};

/***********************************************************************
 * Helpers
 **********************************************************************/
std::string check_ant_option_valid(const std::string& name,
    const std::vector<std::string>& valid_options,
    const std::string& option)
{
    if (std::find(valid_options.begin(), valid_options.end(), option)
        == valid_options.end()) {
        throw uhd::runtime_error(
            str(boost::format("Invalid option chosen for: %s") % name));
    }

    return option;
}

/***********************************************************************
 * Discovery
 **********************************************************************/
//! Look up the type of ant-Series device we're currently running.

static device_addrs_t ant_find(const device_addr_t& hint)
{
    device_addrs_t hints = separate_device_addr(hint);

    if(hints.size() > 1){
        device_addrs_t found_devices;
        std::string error_msg;
        for(const device_addr_t& hint_i : hints){
            device_addrs_t found_device_i = ant_find(hint_i);
            if(found_device_i.size() != 1)
                error_msg +=
                        str(boost::format(
                                "Could not resolve device hint \"%s\" to a single device.")
                            % hint_i.to_string());
            else
                found_devices.push_back(found_device_i[0]);
        }
        if(found_devices.empty())
            return device_addrs_t();
        if(not error_msg.empty())
            throw uhd::value_error(error_msg);
        return device_addrs_t(1, combine_device_addrs(found_devices));
    }

    // initialize the hint for a single device case
    UHD_ASSERT_THROW(hints.size() <= 1);
    hints.resize(1);
    device_addr_t hint_ = hints[0];
    device_addrs_t ant_addrs;

    // return an empty list of addresses when type is set to non-b200
    if (hint_.has_key("type") and hint["type"] != "ant")
        return ant_addrs;

    if(not hint_.has_key("addr")){
        for(const if_addrs_t& if_addrs : get_if_addrs()){
            if(if_addrs.inet == boost::asio::ip::address_v4::loopback().to_string())
                continue;

            device_addr_t new_hint = hint;
            new_hint["addr"] = if_addrs.bcast;

            device_addrs_t new_ant_addrs = ant_find(new_hint);
            ant_addrs.insert(
                    ant_addrs.begin(),new_ant_addrs.begin(),new_ant_addrs.end());
        }
        return ant_addrs;
    }
    /* connect the device from ethernet "addr=" */
    udp_simple::sptr udp_transport;
    try {
        udp_transport = udp_simple::make_broadcast(
                hint_["addr"], BOOST_STRINGIZE(MICROPHASE_ANT_UDP_FIND_PORT));
    } catch (const std::exception &e) {
        UHD_LOGGER_ERROR("Microphase")
                << "Cannot open UDP transport on " << hint_["addr"] << ":" << e.what();
        return ant_addrs;
    }

    //send a hello control packet
    microphase_ant_ctrl_data_t ctrl_data_out = microphase_ant_ctrl_data_t();
    ctrl_data_out.check = uhd::htonx<uint32_t>(MICROPHASE_CHECK);
    ctrl_data_out.id = uhd::htonx<uint32_t >(MICROPHASE_CTRL_ID_WAZZUP_BR0);
    ctrl_data_out.serial = uhd::htonx<uint32_t >(MICROPHASE_SERIAL_BR0);
    ctrl_data_out.auth = uhd::htonx<uint32_t >(MICROPHASE_AUTHOR_BR0);
    try {
        udp_transport->send(boost::asio::buffer(&ctrl_data_out, sizeof(ctrl_data_out)));
    } catch (const std::exception &ex) {
        UHD_LOGGER_ERROR("Microphase ANT") << "ANT Network discovery error" << ex.what();
    } catch (...) {
        UHD_LOGGER_ERROR("Microphase ANT") << "ANT Network discovery unkonwn error";
    }
    //loop and recieve until the timeout
    uint8_t microphase_ant_ctrl_data_in_mem[udp_simple::mtu];

    const microphase_ant_ctrl_data_t *ctrl_data_in =
            reinterpret_cast<const microphase_ant_ctrl_data_t *>(microphase_ant_ctrl_data_in_mem);

    while (true) {
        size_t len = udp_transport->recv(boost::asio::buffer(microphase_ant_ctrl_data_in_mem));
        if (len > offsetof(microphase_ant_ctrl_data_t, serial)
            and ntohl(ctrl_data_in->id) == MICROPHASE_CTRL_ID_WAZZUP_DUDE
            and ntohl(ctrl_data_in->check) == MICROPHASE_CHECK
            and ntohl(ctrl_data_in->serial) == MICROPHASE_SERIAL_DUDE
            and ntohl(ctrl_data_in->auth) == MICROPHASE_AUTHOR_DUDE) {
            // make a boost asio ipv4 with the raw addr in host byte order1

            device_addr_t mp_addr;
            mp_addr["type"] = "ant";
            mp_addr["addr"] = udp_transport->get_recv_addr();

            udp_simple::sptr ctrl_xport = udp_simple::make_connected(
                    mp_addr["addr"], BOOST_STRINGIZE(MICROPHASE_ANT_UDP_FIND_PORT)
            );
            udp_transport->send(boost::asio::buffer(&ctrl_data_out, sizeof(ctrl_data_out)));
            size_t len = udp_transport->recv(boost::asio::buffer(microphase_ant_ctrl_data_in_mem));
            if (len > offsetof(microphase_ant_ctrl_data_t, serial)
                and ntohl(ctrl_data_in->id) == MICROPHASE_CTRL_ID_WAZZUP_DUDE
                and ntohl(ctrl_data_in->check) == MICROPHASE_CHECK
                and ntohl(ctrl_data_in->serial) == MICROPHASE_SERIAL_DUDE
                and ntohl(ctrl_data_in->auth) == MICROPHASE_AUTHOR_DUDE) {
                uint8_t serial[32];
                memcpy(serial,ctrl_data_in->serial_all,sizeof(serial));
                std::string serial_str((char *)serial);
                std::transform(serial_str.begin(),serial_str.end(),serial_str.begin(),::toupper);
                uint8_t board_version[8];
                memcpy(board_version,ctrl_data_in->board_version,sizeof(board_version));
                std::string board_str((char*)board_version,sizeof(board_version));
                if(board_str.at(0) != 'E')
                    mp_addr["product"] = "E200";
                else
                    mp_addr["product"] = board_str;
                mp_addr["serial"] = serial_str.substr(0,32);
                if(mp_addr["product"] == "E310  v2")
                    mp_addr["name"] = "ANTSDR-E310";
                else
                    mp_addr["name"] = "ANTSDR-E200";
                // found the device,open up for communication!
                ant_addrs.push_back(mp_addr);
            } else {
                continue;
            }
        }
        if (len == 0)
            break;
    }
    return ant_addrs;
}

/***********************************************************************
 * Make
 **********************************************************************/
static device::sptr ant_make(const device_addr_t& device_addr)
{

    // We try twice, because the first time, the link might be in a bad state
    // and we might need to reset the link, but if that didn't help, trying
    // a third time is pointless.
    try {
        return device::sptr(new ant_impl(device_addr));
    } catch (const uhd::assertion_error&) {
        UHD_LOGGER_INFO("ANT") << "Detected ANT net state; resetting device.";
    }

    return device::sptr(new ant_impl(device_addr));
}

UHD_STATIC_BLOCK(register_ant_device)
{
    device::register_device(&ant_find, &ant_make, device::USRP);
}

/***********************************************************************
 * Structors
 **********************************************************************/
ant_impl::ant_impl(const uhd::device_addr_t &device_addr)
    : _product(B200)
    , // Some safe value
    _revision(0)
    , _enable_user_regs(device_addr.has_key("enable_user_regs"))
    , _time_source(UNKNOWN)
    , _tick_rate(0.0) // Forces a clock initialization at startup
{
    _tree = property_tree::make();
    _type = device::USRP;
    const fs_path mb_path = "/mboards/0";

    if (device_addr.has_key("type") && device_addr["type"] == "ant") {
        /* Microphase not use usb
         * and not eeprom
         * so there is no iface
         * */

        /* set the product is B200
         * because the e310 is using b200_driver
         * */
        _product = B210;
        _product_mp = E310;
        const std::string addr = device_addr["addr"];
        UHD_LOGGER_INFO("ANT") << "Detected Device: ANTSDR";

        mboard_eeprom_t mb_eeprom;
        mb_eeprom["magic"] = "45568";
        mb_eeprom["eeprom_revision"] = "v0.1";
        mb_eeprom["eeprom_compat"] = "1";
        mb_eeprom["product"] = "MICROPHASE";
        mb_eeprom["name"] = "ANT";
        mb_eeprom["serial"] = device_addr["serial"];
        _tree->create<mboard_eeprom_t>(mb_path / "eeprom")
                .set(mb_eeprom)
                .add_coerced_subscriber(
                        std::bind(&ant_impl::set_mb_eeprom, this)
                );

        _gpsdo_capable = 0;
        if(device_addr["product"] == "E310  v2")
            _gpsdo_capable = 1;
        ////////////////////////////////////////////////////////////////////
        // Set up frontend mapping
        ////////////////////////////////////////////////////////////////////
        // Explanation: The AD9361 has 2 frontends, FE1 and FE2.
        // On the B210 FE1 maps to the B-side (or radio 1), and FE2 maps
        // to the A-side (or radio 0). So, logically, the radios are swapped
        // between the host side and the AD9361-side.
        // B200 is more complicated: On Revs <= 4, the A-side is connected,
        // which means FE2 is used (like B210). On Revs >= 5, the left side
        // ("B-side") is connected, because these revs use an AD9364, which
        // does not have an FE2, so we don't swap FEs.

        // Swapped setup:
//        _fe1 = 1;
//        _fe2 = 0;
//        _gpio_state.swap_atr = 1;
        _fe1 = 0;
        _fe2 = 1;
        _gpio_state.swap_atr = 0;
        // Unswapped setup:
        if (_product == B200MINI or _product == B205MINI
            or (_product == B200 and _revision >= 5)) {
            _fe1 = 0; // map radio0 to FE1
            _fe2 = 1; // map radio1 to FE2
            _gpio_state.swap_atr = 0; // ATRs for radio0 are mapped to FE1
        }

        zero_copy_xport_params default_buff_args;
        default_buff_args.send_frame_size = transport::udp_simple::mtu;
        default_buff_args.recv_frame_size = transport::udp_simple::mtu;
        default_buff_args.num_send_frames = 16;
        default_buff_args.num_recv_frames = 16;
        default_buff_args.send_buff_size = 1e6;
        default_buff_args.recv_buff_size = 1e6;


        /* make the transprt object with the hintS
              * create the transport port (_ctrl_transport)
              * */
        device_addr_t filtered_hints;
        udp_zero_copy::buff_params ignored_params;

        _ctrl_transport = udp_zero_copy::make(
                addr, BOOST_STRINGIZE(MICROPHASE_ANT_UDP_CTRL_PORT), default_buff_args, ignored_params,
                filtered_hints);
        while (_ctrl_transport->get_recv_buff(0.0)) {
        } // flush ctrl xport

        ////////////////////////////////////////////////////////////////////
        // Async task structure
        ////////////////////////////////////////////////////////////////////
        _async_task_data.reset(new AsyncTaskData());
        _async_task_data->async_md.reset(new async_md_type(1000 /*messages deep*/));
        if (_gpsdo_capable) {
            _async_task_data->gpsdo_uart =
                    ant_uart::make(_ctrl_transport, ANT_TX_GPS_UART_SID);
        }
        _async_task = uhd::msg_task::make(boost::bind(
                &ant_impl::handle_async_task, this, _ctrl_transport, _async_task_data));

        ////////////////////////////////////////////////////////////////////
        // Local control endpoint
        ////////////////////////////////////////////////////////////////////
        _local_ctrl = radio_ctrl_core_3000::make(false /*lilE*/,
                                                 _ctrl_transport,
                                                 zero_copy_if::sptr() /*null*/,
                                                 ANT_LOCAL_CTRL_SID);
        _local_ctrl->hold_task(_async_task);
        _async_task_data->local_ctrl = _local_ctrl; // weak
        this->check_fpga_compat();

        /* Initialize the GPIOs, set the default bandsels to the lower range. Note
         * that calling update_bandsel calls update_gpio_state(). */
        update_bandsel("RX", 800e6);
        update_bandsel("TX", 850e6);

        ////////////////////////////////////////////////////////////////////
        // Create the GPSDO control
        ////////////////////////////////////////////////////////////////////
        if (_gpsdo_capable) {
            if ((_local_ctrl->peek32(RB32_CORE_STATUS) & 0xff) != ANT_GPSDO_ST_NONE) {
                UHD_LOGGER_INFO("ANT") << "Detecting internal GPSDO.... " << std::flush;
                try {
                    _gps = gps_ctrl::make(_async_task_data->gpsdo_uart,true);
                } catch (std::exception &e) {
                    UHD_LOGGER_ERROR("ANT")
                            << "An error occurred making GPSDO control: " << e.what();
                }
                if (_gps and _gps->gps_detected()) {
                    for (const std::string &name: _gps->get_sensors()) {
                        _tree->create<sensor_value_t>(mb_path / "sensors" / name)
                                .set_publisher(std::bind(&gps_ctrl::get_sensor, _gps, name));
                    }
                } else {
                    _local_ctrl->poke32(TOREG(SR_CORE_GPSDO_ST), ANT_GPSDO_ST_NONE);
                }
            }
        }

        ////////////////////////////////////////////////////////////////////
        // Initialize the properties tree
        ////////////////////////////////////////////////////////////////////
        std::string product_name = "B210";
        _tree->create<std::string>("/name").set("B-Series Device");
        _tree->create<std::string>(mb_path / "name").set(product_name);
        _tree->create<std::string>(mb_path / "codename")
                .set((_product == B200MINI or _product == B205MINI) ? "Pixie" : "Sasquatch");

        ////////////////////////////////////////////////////////////////////
        // Create data transport
        ////////////////////////////////////////////////////////////////////
        udp_zero_copy::buff_params ignored_out_params;
        device_addr_t fi_hints;
        _data_rx_transport = udp_zero_copy::make(
                addr, BOOST_STRINGIZE(MICROPHASE_ANT_UDP_DATA_RX_PORT), default_buff_args,
                ignored_out_params, fi_hints);
        if (_data_rx_transport.get()) {
            _program_dispatcher(*_data_rx_transport);
        }
        while (_data_rx_transport->get_recv_buff(0.0)) {
        } // flush ctrl xport
        _demux = recv_packet_demuxer_3000::make(_data_rx_transport);

        _data_tx_transport = udp_zero_copy::make(
                addr, BOOST_STRINGIZE(MICROPHASE_ANT_UDP_DATA_TX_PORT), default_buff_args,
                ignored_out_params, fi_hints);
        while (_data_tx_transport->get_recv_buff(0.0)) {
        }
        _data_tx1_transport = udp_zero_copy::make(
                addr, BOOST_STRINGIZE(MICROPHASE_ANT_UDP_DATA_TX1_PORT), default_buff_args,
                ignored_out_params, fi_hints);
        while (_data_tx1_transport->get_recv_buff(0.0)) {
        }

        ////////////////////////////////////////////////////////////////////
        // create time and clock control objects
        ////////////////////////////////////////////////////////////////////
        _spi_iface = ant_local_spi_core::make(_local_ctrl);
        if (not(_product == B200MINI or _product == B205MINI)) {
            _adf4001_iface = std::make_shared<ant_ref_pll_ctrl>(_spi_iface);
        }

        ////////////////////////////////////////////////////////////////////
        // Init codec - turns on clocks
        ////////////////////////////////////////////////////////////////////
        UHD_LOGGER_INFO("ANT") << "Initialize CODEC control...";
        reset_codec();
        ad9361_params::sptr client_settings;
        client_settings = std::make_shared<antsdr_ad9361_client_t>();

        _codec_ctrl = ad9361_ctrl::make_spi(client_settings, _spi_iface, AD9361_SLAVENO);

        ////////////////////////////////////////////////////////////////////
        // create codec control objects
        ////////////////////////////////////////////////////////////////////
        {
            const fs_path codec_path = mb_path / ("rx_codecs") / "A";
            _tree->create<std::string>(codec_path / "name")
                    .set(product_name + " RX dual ADC");
            _tree->create<int>(codec_path / "gains"); // empty cuz gains are in frontend
        }
        {
            const fs_path codec_path = mb_path / ("tx_codecs") / "A";
            _tree->create<std::string>(codec_path / "name")
                    .set(product_name + " TX dual DAC");
            _tree->create<int>(codec_path / "gains"); // empty cuz gains are in frontend
        }

        ////////////////////////////////////////////////////////////////////
        // create clock control objects
        ////////////////////////////////////////////////////////////////////
        _tree->create<double>(mb_path / "tick_rate")
                .set_coercer(std::bind(&ant_impl::set_tick_rate, this, std::placeholders::_1))
                .set_publisher(std::bind(&ant_impl::get_tick_rate, this))
                .add_coerced_subscriber(
                        std::bind(&ant_impl::update_tick_rate, this, std::placeholders::_1));
        _tree->create<meta_range_t>(mb_path / "tick_rate/range").set_publisher([this]() {
            return this->_codec_ctrl->get_clock_rate_range();
        });
        _tree->create<time_spec_t>(mb_path / "time" / "cmd");
        _tree->create<bool>(mb_path / "auto_tick_rate").set(false);

        ////////////////////////////////////////////////////////////////////
        // and do the misc mboard sensors
        ////////////////////////////////////////////////////////////////////
        _tree->create<sensor_value_t>(mb_path / "sensors" / "ref_locked")
                .set_publisher(std::bind(&ant_impl::get_ref_locked, this));

        ////////////////////////////////////////////////////////////////////
        // create frontend mapping
        ////////////////////////////////////////////////////////////////////
        std::vector<size_t> default_map(2, 0);
        default_map[1] = 1; // Set this to A->0 B->1 even if there's only A
        _tree->create<std::vector<size_t>>(mb_path / "rx_chan_dsp_mapping").set(default_map);
        _tree->create<std::vector<size_t>>(mb_path / "tx_chan_dsp_mapping").set(default_map);
        _tree->create<subdev_spec_t>(mb_path / "rx_subdev_spec")
                .set_coercer(
                        std::bind(&ant_impl::coerce_subdev_spec, this, std::placeholders::_1))
                .set(subdev_spec_t())
                .add_coerced_subscriber(
                        std::bind(&ant_impl::update_subdev_spec, this, "rx", std::placeholders::_1));
        _tree->create<subdev_spec_t>(mb_path / "tx_subdev_spec")
                .set_coercer(
                        std::bind(&ant_impl::coerce_subdev_spec, this, std::placeholders::_1))
                .set(subdev_spec_t())
                .add_coerced_subscriber(
                        std::bind(&ant_impl::update_subdev_spec, this, "tx", std::placeholders::_1));

        ////////////////////////////////////////////////////////////////////
        // setup radio control
        ////////////////////////////////////////////////////////////////////
        UHD_LOGGER_INFO("ANT") << "Initialize Radio control...";
        const size_t num_radio_chains = ((_local_ctrl->peek32(RB32_CORE_STATUS) >> 8) & 0xff);
        UHD_ASSERT_THROW(num_radio_chains > 0);
        UHD_ASSERT_THROW(num_radio_chains <= 2);
        _radio_perifs.resize(num_radio_chains);
        _codec_mgr = ad936x_manager::make(_codec_ctrl, num_radio_chains);
        _codec_mgr->init_codec();
        for (size_t i = 0; i < _radio_perifs.size(); i++)
            this->setup_radio(i);

        // now test each radio module's connection to the codec interface
        for (radio_perifs_t &perif: _radio_perifs) {
            _codec_mgr->loopback_self_test(
                    [&perif](const uint32_t value) {
                        perif.ctrl->poke32(TOREG(SR_CODEC_IDLE), value);
                    },
                    [&perif]() { return perif.ctrl->peek64(RB64_CODEC_READBACK); });
        }

        // register time now and pps onto available radio cores
        _tree->create<time_spec_t>(mb_path / "time" / "now")
                .set_publisher(std::bind(&time_core_3000::get_time_now, _radio_perifs[0].time64))
                .add_coerced_subscriber(
                        std::bind(&ant_impl::set_time, this, std::placeholders::_1))
                .set(0.0);
        // re-sync the times when the tick rate changes
        _tree->access<double>(mb_path / "tick_rate")
                .add_coerced_subscriber(std::bind(&ant_impl::sync_times, this));
        _tree->create<time_spec_t>(mb_path / "time" / "pps")
                .set_publisher(
                        std::bind(&time_core_3000::get_time_last_pps, _radio_perifs[0].time64));
        for (radio_perifs_t &perif: _radio_perifs) {
            _tree->access<time_spec_t>(mb_path / "time" / "pps")
                    .add_coerced_subscriber(std::bind(
                            &time_core_3000::set_time_next_pps, perif.time64, std::placeholders::_1));
        }

        // setup time source props
        const std::vector<std::string> time_sources =
                (_gpsdo_capable)
                ? std::vector<std::string>{"none", "internal", "external", "gpsdo"}
                : std::vector<std::string>{"none", "internal", "external"};
        _tree->create<std::vector<std::string>>(mb_path / "time_source" / "options")
                .set(time_sources);
        _tree->create<std::string>(mb_path / "time_source" / "value")
                .set_coercer(std::bind(
                        &check_ant_option_valid, "time source", time_sources, std::placeholders::_1))
                .add_coerced_subscriber(
                        std::bind(&ant_impl::update_time_source, this, std::placeholders::_1));
        // setup reference source props
        const std::vector<std::string> clock_sources =
                (_gpsdo_capable) ? std::vector<std::string>{"internal", "external", "gpsdo"}
                                 : std::vector<std::string>{"internal", "external"};
        _tree->create<std::vector<std::string>>(mb_path / "clock_source" / "options")
                .set(clock_sources);
        _tree->create<std::string>(mb_path / "clock_source" / "value")
                .set_coercer(std::bind(
                        &check_ant_option_valid, "clock source", clock_sources, std::placeholders::_1))
                .add_coerced_subscriber(
                        std::bind(&ant_impl::update_clock_source, this, std::placeholders::_1));

        ////////////////////////////////////////////////////////////////////
        // front panel gpio
        ////////////////////////////////////////////////////////////////////
        _radio_perifs[0].fp_gpio =
                gpio_atr_3000::make(_radio_perifs[0].ctrl, TOREG(SR_FP_GPIO), RB32_FP_GPIO);
        for (const auto &attr: gpio_attr_map) {
            switch (attr.first) {
                case usrp::gpio_atr::GPIO_SRC:
                    _tree
                            ->create<std::vector<std::string>>(
                                    mb_path / "gpio" / "FP0" / attr.second)
                            .set(std::vector<std::string>(
                                    32, usrp::gpio_atr::default_attr_value_map.at(attr.first)))
                            .add_coerced_subscriber([](const std::vector<std::string> &) {
                                throw uhd::runtime_error("This device does not support setting "
                                                         "the GPIO_SRC attribute.");
                            });
                    break;
                case usrp::gpio_atr::GPIO_CTRL:
                case usrp::gpio_atr::GPIO_DDR:
                    _tree
                            ->create<std::vector<std::string>>(
                                    mb_path / "gpio" / "FP0" / attr.second)
                            .set(std::vector<std::string>(
                                    32, usrp::gpio_atr::default_attr_value_map.at(attr.first)))
                            .add_coerced_subscriber([this, attr](
                                    const std::vector<std::string> str_val) {
                                uint32_t val = 0;
                                for (size_t i = 0; i < str_val.size(); i++) {
                                    val += usrp::gpio_atr::gpio_attr_value_pair.at(attr.second)
                                            .at(str_val[i])
                                            << i;
                                }
                                _radio_perifs[0].fp_gpio->set_gpio_attr(attr.first, val);
                            });
                    break;
                case usrp::gpio_atr::GPIO_READBACK:
                    _tree->create<uint32_t>(mb_path / "gpio" / "FP0" / "READBACK")
                            .set_publisher(
                                    std::bind(&gpio_atr_3000::read_gpio, _radio_perifs[0].fp_gpio));
                    break;
                default:
                    _tree->create<uint32_t>(mb_path / "gpio" / "FP0" / attr.second)
                            .set(0)
                            .add_coerced_subscriber(std::bind(&gpio_atr_3000::set_gpio_attr,
                                                              _radio_perifs[0].fp_gpio,
                                                              attr.first,
                                                              std::placeholders::_1));
            }
        }

        ////////////////////////////////////////////////////////////////////
        // dboard eeproms but not really
        ////////////////////////////////////////////////////////////////////
        dboard_eeprom_t db_eeprom;
        _tree->create<dboard_eeprom_t>(mb_path / "dboards" / "A" / "rx_eeprom")
                .set(db_eeprom);
        _tree->create<dboard_eeprom_t>(mb_path / "dboards" / "A" / "tx_eeprom")
                .set(db_eeprom);
        _tree->create<dboard_eeprom_t>(mb_path / "dboards" / "A" / "gdb_eeprom")
                .set(db_eeprom);

        ////////////////////////////////////////////////////////////////////
        // do some post-init tasks
        ////////////////////////////////////////////////////////////////////
        // Init the clock rate and the auto mcr appropriately
        if (not device_addr.has_key("master_clock_rate")) {
            UHD_LOGGER_INFO("ANT") << "Setting master clock rate selection to 'automatic'.";
        }
        // We can automatically choose a master clock rate, but not if the user specifies one
        const double default_tick_rate =
                device_addr.cast<double>("master_clock_rate", ad936x_manager::DEFAULT_TICK_RATE);
        _tree->access<double>(mb_path / "tick_rate").set(default_tick_rate);
        _tree->access<bool>(mb_path / "auto_tick_rate")
                .set(not device_addr.has_key("master_clock_rate"));

        // subdev spec contains full width of selections
        subdev_spec_t rx_spec, tx_spec;
        for (const std::string &fe:
                _tree->list(mb_path / "dboards" / "A" / "rx_frontends")) {
            rx_spec.push_back(subdev_spec_pair_t("A", fe));
        }
        for (const std::string &fe:
                _tree->list(mb_path / "dboards" / "A" / "tx_frontends")) {
            tx_spec.push_back(subdev_spec_pair_t("A", fe));
        }
        _tree->access<subdev_spec_t>(mb_path / "rx_subdev_spec").set(rx_spec);
        _tree->access<subdev_spec_t>(mb_path / "tx_subdev_spec").set(tx_spec);

        // init to internal clock and time source
        _tree->access<std::string>(mb_path / "clock_source/value").set("internal");
        _tree->access<std::string>(mb_path / "time_source/value").set("internal");

        // Set the DSP chains to some safe value
        for (size_t i = 0; i < _radio_perifs.size(); i++) {
            _radio_perifs[i].ddc->set_host_rate(
                    default_tick_rate / ad936x_manager::DEFAULT_DECIM);
            _radio_perifs[i].duc->set_host_rate(
                    default_tick_rate / ad936x_manager::DEFAULT_INTERP);
        }
    }
}

ant_impl::~ant_impl(void)
{
    UHD_SAFE_CALL(_async_task.reset();)
}

/***********************************************************************
 * setup radio control objects
 **********************************************************************/
void ant_impl::setup_radio(const size_t dspno)
{
    radio_perifs_t& perif = _radio_perifs[dspno];
    const fs_path mb_path = "/mboards/0";

    ////////////////////////////////////////////////////////////////////
    // Set up transport
    ////////////////////////////////////////////////////////////////////
    const uint32_t sid = (dspno == 0) ? ANT_CTRL0_MSG_SID : ANT_CTRL1_MSG_SID;

    ////////////////////////////////////////////////////////////////////
    // radio control
    ////////////////////////////////////////////////////////////////////
    perif.ctrl = radio_ctrl_core_3000::make(
        false /*lilE*/, _ctrl_transport, zero_copy_if::sptr() /*null*/, sid);
    perif.ctrl->hold_task(_async_task);
    _async_task_data->radio_ctrl[dspno] = perif.ctrl; // weak
    _tree->access<time_spec_t>(mb_path / "time" / "cmd")
        .add_coerced_subscriber(std::bind(
            &radio_ctrl_core_3000::set_time, perif.ctrl, std::placeholders::_1));
    _tree->access<double>(mb_path / "tick_rate")
        .add_coerced_subscriber(std::bind(
            &radio_ctrl_core_3000::set_tick_rate, perif.ctrl, std::placeholders::_1));
    this->register_loopback_self_test(perif.ctrl);

    ////////////////////////////////////////////////////////////////////
    // Set up peripherals
    ////////////////////////////////////////////////////////////////////
    perif.atr = gpio_atr_3000::make_write_only(perif.ctrl, TOREG(SR_ATR));
    perif.atr->set_atr_mode(MODE_ATR, 0xFFFFFFFF);
    // create rx dsp control objects
    perif.framer = rx_vita_core_3000::make(perif.ctrl, TOREG(SR_RX_CTRL));
    perif.ddc = rx_dsp_core_3000::make(perif.ctrl, TOREG(SR_RX_DSP), true /*is_b200?*/);
    perif.ddc->set_link_rate(10e9 / 8); // whatever
    perif.ddc->set_mux(usrp::fe_connection_t(dspno == 1 ? "IbQb" : "IQ"));
    perif.ddc->set_freq(rx_dsp_core_3000::DEFAULT_CORDIC_FREQ);
    perif.deframer = tx_vita_core_3000::make_no_radio_buff(perif.ctrl, TOREG(SR_TX_CTRL));
    perif.duc      = tx_dsp_core_3000::make(perif.ctrl, TOREG(SR_TX_DSP));
    perif.duc->set_link_rate(10e9 / 8); // whatever
    perif.duc->set_freq(tx_dsp_core_3000::DEFAULT_CORDIC_FREQ);
    if (_enable_user_regs) {
        UHD_LOG_DEBUG("ANT", "Enabling user settings registers");
        perif.user_settings = user_settings_core_3000::make(
            perif.ctrl, TOREG(SR_USER_SR_BASE), TOREG(SR_USER_RB_ADDR));
        if (!perif.user_settings) {
            const std::string error_msg = "Failed to create user settings bus!";
            UHD_LOG_ERROR("ANT", error_msg);
            throw uhd::runtime_error(error_msg);
        }
    }

    ////////////////////////////////////////////////////////////////////
    // create time control objects
    ////////////////////////////////////////////////////////////////////
    time_core_3000::readback_bases_type time64_rb_bases;
    time64_rb_bases.rb_now = RB64_TIME_NOW;
    time64_rb_bases.rb_pps = RB64_TIME_PPS;
    perif.time64 = time_core_3000::make(perif.ctrl, TOREG(SR_TIME), time64_rb_bases);

    ////////////////////////////////////////////////////////////////////
    // connect rx dsp control objects
    ////////////////////////////////////////////////////////////////////
    const fs_path rx_dsp_path = mb_path / "rx_dsps" / dspno;
    perif.ddc->populate_subtree(_tree->subtree(rx_dsp_path));
    _tree->create<bool>(rx_dsp_path / "rate" / "set").set(false);
    _tree->access<double>(rx_dsp_path / "rate" / "value")
        .set_coercer(std::bind(&ant_impl::coerce_rx_samp_rate,
            this,
            perif.ddc,
            dspno,
            std::placeholders::_1))
        .add_coerced_subscriber([this, rx_dsp_path](const double) {
            if (this->_tree) {
                this->_tree->access<bool>(rx_dsp_path / "rate" / "set").set(true);
            }
        })
        .add_coerced_subscriber(std::bind(
                &ant_impl::update_rx_samp_rate, this, dspno, std::placeholders::_1));
    _tree->create<stream_cmd_t>(rx_dsp_path / "stream_cmd")
        .add_coerced_subscriber(std::bind(&rx_vita_core_3000::issue_stream_command,
            perif.framer,
            std::placeholders::_1));
    _tree->access<double>(mb_path / "tick_rate")
        .add_coerced_subscriber(std::bind(
            &rx_vita_core_3000::set_tick_rate, perif.framer, std::placeholders::_1))
        .add_coerced_subscriber(std::bind(&ant_impl::update_rx_dsp_tick_rate,
            this,
            std::placeholders::_1,
            perif.ddc,
            rx_dsp_path));

    ////////////////////////////////////////////////////////////////////
    // create tx dsp control objects
    ////////////////////////////////////////////////////////////////////
    const fs_path tx_dsp_path = mb_path / "tx_dsps" / dspno;
    perif.duc->populate_subtree(_tree->subtree(tx_dsp_path));
    _tree->create<bool>(tx_dsp_path / "rate" / "set").set(false);
    _tree->access<double>(tx_dsp_path / "rate" / "value")
        .set_coercer(std::bind(&ant_impl::coerce_tx_samp_rate,
            this,
            perif.duc,
            dspno,
            std::placeholders::_1))
        .add_coerced_subscriber([this, tx_dsp_path](const double) {
            if (this->_tree) {
                this->_tree->access<bool>(tx_dsp_path / "rate" / "set").set(true);
            }
        })
        .add_coerced_subscriber(std::bind(
                &ant_impl::update_tx_samp_rate, this, dspno, std::placeholders::_1));
    _tree->access<double>(mb_path / "tick_rate")
        .add_coerced_subscriber(std::bind(&ant_impl::update_tx_dsp_tick_rate,
            this,
            std::placeholders::_1,
            perif.duc,
            tx_dsp_path));

    ////////////////////////////////////////////////////////////////////
    // create RF frontend interfacing
    ////////////////////////////////////////////////////////////////////
    // The "calibration serial" is the motherboard serial plus the frontend
    // (A or B) separated by colon, e.g. "1234ABC:A".
    const std::string cal_serial =
        _tree->access<mboard_eeprom_t>(mb_path / "eeprom").get()["serial"] + "#"
        + (dspno ? "B" : "A");
    // The "calibration key" is either b2xxmini_power_cal_$dir_$ant, or
    // b2xx_power_cal_$dir_$ant, depending on the form factor.
    // $dir is either "tx" or "rx", and "ant" is either "tx_rx" or "rx2" (i.e.,
    // sanitized version of the antenna names that work in filenames.
    const std::string cal_key_base =
        (_product == B200MINI or _product == B205MINI) ? "b2xxmini_pwr_" : "b2xx_pwr_";
    for (direction_t dir : std::vector<direction_t>{RX_DIRECTION, TX_DIRECTION}) {
        const std::string dir_key = (dir == RX_DIRECTION) ? "rx" : "tx";
        const std::string key     = std::string(((dir == RX_DIRECTION) ? "RX" : "TX"))
                                + std::string(((dspno == _fe1) ? "1" : "2"));
        const fs_path rf_fe_path =
            mb_path / "dboards" / "A" / (dir_key + "_frontends") / (dspno ? "B" : "A");
        const std::vector<std::string> ants =
            (dir == RX_DIRECTION) ? std::vector<std::string>{"TX/RX", "RX2"}
                                  : std::vector<std::string>{"TX/RX"};

        // This will connect all the AD936x-specific items
        _codec_mgr->populate_frontend_subtree(_tree->subtree(rf_fe_path), key, dir);

        // Antenna controls are board-specific, not AD936x specific
        if (dir == RX_DIRECTION) {
            _tree->create<std::string>(rf_fe_path / "antenna" / "value")
                .add_coerced_subscriber([this, dspno](const std::string& antenna) {
                    this->update_antenna_sel(dspno, antenna);
                })
                .set("RX2");
        } else if (dir == TX_DIRECTION) {
            _tree->create<std::string>(rf_fe_path / "antenna" / "value").set("TX/RX");
        }

        // We don't add any baseband correction
        auto ggroup                    = uhd::gain_group::make();
        constexpr char HW_GAIN_STAGE[] = "hw";
        ggroup->register_fcns(HW_GAIN_STAGE,
            {// Get gain range:
                [key]() { return ad9361_ctrl::get_gain_range(key); },
                // Get gain:
                [this, rf_fe_path, key]() {
                    return _tree
                        ->access<double>(rf_fe_path / "gains"
                                         / ad9361_ctrl::get_gain_names(key).at(0)
                                         / "value")
                        .get();
                },
                // Set gain:
                [this, rf_fe_path, key](const double gain) {
                    _tree
                        ->access<double>(rf_fe_path / "gains"
                                         / ad9361_ctrl::get_gain_names(key).at(0)
                                         / "value")
                        .set(gain);
                }});
        // Add power controls
        perif.pwr_mgr.insert({dir_key,
            pwr_cal_mgr::make(
                cal_serial,
                "B200-CAL-" + key,
                // Frequency getter:
                [this, rf_fe_path]() {
                    return _tree->access<double>(rf_fe_path / "freq" / "value").get();
                },
                // Current key getter (see notes on calibration key above):
                [this, rf_fe_path, cal_key_base, dir_key]() {
                    return cal_key_base + dir_key + "_"
                           + pwr_cal_mgr::sanitize_antenna_name(
                               _tree->access<std::string>(
                                        rf_fe_path / "antenna" / "value")
                                   .get());
                },
                ggroup)});
        perif.pwr_mgr.at(dir_key)->populate_subtree(_tree->subtree(rf_fe_path));
        perif.pwr_mgr.at(dir_key)->set_temperature(
            _tree->access<sensor_value_t>(rf_fe_path / "sensors" / "temp")
                .get()
                .to_int());

        // Now connect all the ant_impl-specific items
        _tree->create<sensor_value_t>(rf_fe_path / "sensors" / "lo_locked")
            .set_publisher(
                [this, dir]() { return this->get_fe_pll_locked(dir == TX_DIRECTION); });
        _tree->access<double>(rf_fe_path / "freq" / "value")
            .add_coerced_subscriber([this, key](const double freq) {
                return this->update_bandsel(key, freq);
            })
            // Every time we retune, we re-set the power level.
            .add_coerced_subscriber([pwr_mgr = perif.pwr_mgr.at(dir_key)](
                                        const double) { pwr_mgr->update_power(); })

            ;
        _tree->create<std::vector<std::string>>(rf_fe_path / "antenna" / "options")
            .set(ants);
        // When we set the gain, we need to disable power tracking. Note that
        // the power manager also calls into the gains property, and thus
        // clobbers its own tracking mode, but that's OK because set_power() will
        // always reset the tracking mode.
        _tree
            ->access<double>(
                rf_fe_path / "gains" / ad9361_ctrl::get_gain_names(key).at(0) / "value")
            .add_coerced_subscriber([pwr_mgr = perif.pwr_mgr.at(dir_key)](const double) {
                pwr_mgr->set_tracking_mode(pwr_cal_mgr::tracking_mode::TRACK_GAIN);
            });

        if (_enable_user_regs) {
            _tree->create<uhd::wb_iface::sptr>(rf_fe_path / "user_settings/iface")
                .set(perif.user_settings);
        }
    }
}

/***********************************************************************
 * loopback tests
 **********************************************************************/

void ant_impl::register_loopback_self_test(wb_iface::sptr iface)
{
    bool test_fail = false;
    UHD_LOGGER_INFO("ANT") << "Performing register loopback test... ";
    size_t hash = size_t(time(NULL));
    for (size_t i = 0; i < 100; i++) {
        boost::hash_combine(hash, i);
        iface->poke32(TOREG(SR_TEST), uint32_t(hash));
        test_fail = iface->peek32(RB32_TEST) != uint32_t(hash);
        if (test_fail)
            break; // exit loop on any failure
    }
    UHD_LOGGER_INFO("ANT") << "Register loopback test "
                            << ((test_fail) ? "failed" : "passed");
}

/***********************************************************************
 * Sample and tick rate comprehension below
 **********************************************************************/
void ant_impl::enforce_tick_rate_limits(
    size_t chan_count, double tick_rate, const std::string& direction /*= ""*/)
{
    const size_t max_chans = 2;
    if (chan_count > max_chans) {
        throw uhd::value_error(boost::str(
            boost::format("cannot not setup %d %s channels (maximum is %d)") % chan_count
            % (direction.empty() ? "data" : direction) % max_chans));
    } else {
        const double max_tick_rate =
            ad9361_device_t::AD9361_MAX_CLOCK_RATE / ((chan_count <= 1) ? 1 : 2);
        if (tick_rate - max_tick_rate >= 1.0) {
            throw uhd::value_error(boost::str(
                boost::format(
                    "current master clock rate (%.6f MHz) exceeds maximum possible "
                    "master clock rate (%.6f MHz) when using %d %s channels")
                % (tick_rate / 1e6) % (max_tick_rate / 1e6) % chan_count
                % (direction.empty() ? "data" : direction)));
        }
        const double min_tick_rate =
            ad9361_device_t::AD9361_MIN_CLOCK_RATE / ((chan_count <= 1) ? 1 : 2);
        if (min_tick_rate - tick_rate >= 1.0) {
            throw uhd::value_error(boost::str(
                boost::format(
                    "current master clock rate (%.6f MHz) is less than minimum possible "
                    "master clock rate (%.6f MHz) when using %d %s channels")
                % (tick_rate / 1e6) % (min_tick_rate / 1e6) % chan_count
                % (direction.empty() ? "data" : direction)));
        }
    }
}

double ant_impl::set_tick_rate(const double new_tick_rate)
{
    UHD_LOGGER_INFO("ANT") << (boost::format("Asking for clock rate %.6f MHz... ")
                                % (new_tick_rate / 1e6))
                            << std::flush;
    check_tick_rate_with_current_streamers(new_tick_rate); // Defined in b200_io_impl.cpp

    // Make sure the clock rate is actually changed before doing
    // the full Monty of setting regs and loopback tests etc.
    if (std::abs(new_tick_rate - _tick_rate) < 1.0) {
        UHD_LOGGER_INFO("ANT") << "OK";
        return _tick_rate;
    }

    _tick_rate = _codec_ctrl->set_clock_rate(new_tick_rate);
    UHD_LOGGER_INFO("ANT") << (boost::format("Actually got clock rate %.6f MHz.")
                                % (_tick_rate / 1e6));

    for (radio_perifs_t& perif : _radio_perifs) {
        perif.time64->set_tick_rate(_tick_rate);
        perif.time64->self_test();
    }
    return _tick_rate;
}

/***********************************************************************
 * compat checks
 **********************************************************************/

void ant_impl::check_fpga_compat(void)
{
    const uint64_t compat       = _local_ctrl->peek64(0);
    const uint32_t signature    = uint32_t(compat >> 32);
    const uint16_t compat_major = uint16_t(compat >> 16);
    const uint16_t compat_minor = uint16_t(compat & 0xffff);
    if (signature != 0xACE0BA5E)
        throw uhd::runtime_error(
            "ant::check_fpga_compat signature register readback failed");
    const uint16_t expected = ((_product == B200MINI or _product == B205MINI)
                                   ? B205_FPGA_COMPAT_NUM
                                   : B200_FPGA_COMPAT_NUM);
    if (compat_major != expected) {
        throw uhd::runtime_error(str(
            boost::format("Expected FPGA compatibility number %d, but got %d:\n"
                          "The FPGA build is not compatible with the host code build.\n"
                          "%s")
            % int(expected) % compat_major
            % print_utility_error("uhd_images_downloader.py")));
    }
    _tree->create<std::string>("/mboards/0/fpga_version")
        .set(str(boost::format("%u.%u") % compat_major % compat_minor));
}

/***********************************************************************
 * Reference time and clock
 **********************************************************************/

void ant_impl::update_clock_source(const std::string& source)
{
    // For B205, ref_sel selects whether or not to lock to the external clock source
    if (_product == B200MINI or _product == B205MINI) {
        if (source == "external" and _time_source == EXTERNAL) {
            throw uhd::value_error(
                "external reference cannot be both a clock source and a time source");
        }

        if (source == "internal") {
            if (_gpio_state.ref_sel != 0) {
                _gpio_state.ref_sel = 0;
                this->update_gpio_state();
            }
        } else if (source == "external") {
            if (_gpio_state.ref_sel != 1) {
                _gpio_state.ref_sel = 1;
                this->update_gpio_state();
            }
        } else {
            throw uhd::key_error("update_clock_source: unknown source: " + source);
        }
        return;
    }

    // For all other devices, ref_sel selects the external or gpsdo clock source
    // and the ADF4001 selects whether to lock to it or not
    if (source == "internal") {
        _adf4001_iface->set_lock_to_ext_ref(false);
    } else if (source == "external") {
        if (_gpio_state.ref_sel != 0) {
            _gpio_state.ref_sel = 0;
            this->update_gpio_state();
        }
        _adf4001_iface->set_lock_to_ext_ref(true);
    } else if (source == "gpsdo") {
        if (not _gps or not _gps->gps_detected()) {
            throw uhd::key_error(
                "update_clock_source: gpsdo selected, but no gpsdo detected!");
        }
        if (_gpio_state.ref_sel != 1) {
            _gpio_state.ref_sel = 1;
            this->update_gpio_state();
        }
        _adf4001_iface->set_lock_to_ext_ref(true);
    } else {
        throw uhd::key_error("update_clock_source: unknown source: " + source);
    }
}

void ant_impl::update_time_source(const std::string& source)
{
    if ((_product == B200MINI or _product == B205MINI) and source == "external"
        and _gpio_state.ref_sel == 1) {
        throw uhd::value_error(
            "external reference cannot be both a time source and a clock source");
    }

    // We assume source is valid for this device (if it's gone through
    // the prop three, then it definitely is thanks to our coercer)
    time_source_t value;
    if (source == "none")
        value = NONE;
    else if (source == "internal")
        value = INTERNAL;
    else if (source == "external")
        value = EXTERNAL;
    else if (_gps and source == "gpsdo")
        value = GPSDO;
    else
        throw uhd::key_error("update_time_source: unknown source: " + source);
    if (_time_source != value) {
        _local_ctrl->poke32(TOREG(SR_CORE_SYNC), value);
        _time_source = value;
    }
}

void ant_impl::set_time(const uhd::time_spec_t& t)
{
    for (radio_perifs_t& perif : _radio_perifs)
        perif.time64->set_time_sync(t);
    _local_ctrl->poke32(TOREG(SR_CORE_SYNC), 1 << 2 | uint32_t(_time_source));
    _local_ctrl->poke32(TOREG(SR_CORE_SYNC), _time_source);
}

void ant_impl::sync_times()
{
    set_time(_radio_perifs[0].time64->get_time_now());
}

/***********************************************************************
 * GPIO setup
 **********************************************************************/

void ant_impl::update_bandsel(const std::string& which, double freq)
{
    // B205 does not have bandsels
    if (_product == B200MINI or _product == B205MINI) {
        return;
    }

    if (which[0] == 'R') {
        if (freq < 2.2e9) {
            _gpio_state.rx_bandsel_a = 0;
            _gpio_state.rx_bandsel_b = 0;
            _gpio_state.rx_bandsel_c = 1;
        } else if ((freq >= 2.2e9) && (freq < 4e9)) {
            _gpio_state.rx_bandsel_a = 0;
            _gpio_state.rx_bandsel_b = 1;
            _gpio_state.rx_bandsel_c = 0;
        } else if ((freq >= 4e9) && (freq <= 6e9)) {
            _gpio_state.rx_bandsel_a = 1;
            _gpio_state.rx_bandsel_b = 0;
            _gpio_state.rx_bandsel_c = 0;
        } else {
            UHD_THROW_INVALID_CODE_PATH();
        }
    } else if (which[0] == 'T') {
        if (freq < 2.5e9) {
            _gpio_state.tx_bandsel_a = 0;
            _gpio_state.tx_bandsel_b = 1;
        } else if ((freq >= 2.5e9) && (freq <= 6e9)) {
            _gpio_state.tx_bandsel_a = 1;
            _gpio_state.tx_bandsel_b = 0;
        } else {
            UHD_THROW_INVALID_CODE_PATH();
        }
    } else {
        UHD_THROW_INVALID_CODE_PATH();
    }

    update_gpio_state();
}

void ant_impl::reset_codec()
{
    _gpio_state.codec_arst = 1;
    update_gpio_state();
    _gpio_state.codec_arst = 0;
    update_gpio_state();
}

void ant_impl::update_gpio_state(void)
{
    const uint32_t misc_word =
        0 | (_gpio_state.swap_atr << 8) | (_gpio_state.tx_bandsel_a << 7)
        | (_gpio_state.tx_bandsel_b << 6) | (_gpio_state.rx_bandsel_a << 5)
        | (_gpio_state.rx_bandsel_b << 4) | (_gpio_state.rx_bandsel_c << 3)
        | (_gpio_state.codec_arst << 2) | (_gpio_state.mimo << 1)
        | (_gpio_state.ref_sel << 0);

    _local_ctrl->poke32(TOREG(SR_CORE_MISC), misc_word);
}

void ant_impl::update_atrs(void)
{
    if (_radio_perifs.size() > _fe1 and _radio_perifs[_fe1].atr) {
        radio_perifs_t& perif = _radio_perifs[_fe1];
        const bool enb_rx     = bool(perif.rx_streamer.lock());
        const bool enb_tx     = bool(perif.tx_streamer.lock());
        const bool is_rx2     = perif.ant_rx2;
        const uint32_t rxonly = (enb_rx) ? ((is_rx2) ? STATE_RX1_RX2 : STATE_RX1_TXRX)
                                         : STATE_OFF;
        const uint32_t txonly = (enb_tx) ? (STATE_TX1_TXRX) : STATE_OFF;
        uint32_t fd           = STATE_OFF;
        if (enb_rx and enb_tx)
            fd = STATE_FDX1_TXRX;
        if (enb_rx and not enb_tx)
            fd = rxonly;
        if (not enb_rx and enb_tx)
            fd = txonly;
        gpio_atr_3000::sptr atr = perif.atr;
        atr->set_atr_reg(ATR_REG_IDLE, STATE_OFF);
        atr->set_atr_reg(ATR_REG_RX_ONLY, rxonly);
        atr->set_atr_reg(ATR_REG_TX_ONLY, txonly);
        atr->set_atr_reg(ATR_REG_FULL_DUPLEX, fd);
    }
    if (_radio_perifs.size() > _fe2 and _radio_perifs[_fe2].atr) {
        radio_perifs_t& perif = _radio_perifs[_fe2];
        const bool enb_rx     = bool(perif.rx_streamer.lock());
        const bool enb_tx     = bool(perif.tx_streamer.lock());
        const bool is_rx2     = perif.ant_rx2;
        const uint32_t rxonly = (enb_rx) ? ((is_rx2) ? STATE_RX2_RX2 : STATE_RX2_TXRX)
                                         : STATE_OFF;
        const uint32_t txonly = (enb_tx) ? (STATE_TX2_TXRX) : STATE_OFF;
        uint32_t fd           = STATE_OFF;
        if (enb_rx and enb_tx)
            fd = STATE_FDX2_TXRX;
        if (enb_rx and not enb_tx)
            fd = rxonly;
        if (not enb_rx and enb_tx)
            fd = txonly;
        gpio_atr_3000::sptr atr = perif.atr;
        atr->set_atr_reg(ATR_REG_IDLE, STATE_OFF);
        atr->set_atr_reg(ATR_REG_RX_ONLY, rxonly);
        atr->set_atr_reg(ATR_REG_TX_ONLY, txonly);
        atr->set_atr_reg(ATR_REG_FULL_DUPLEX, fd);
    }
}

void ant_impl::update_antenna_sel(const size_t which, const std::string& ant)
{
    if (ant != "TX/RX" and ant != "RX2")
        throw uhd::value_error("b200: unknown RX antenna option: " + ant);
    _radio_perifs[which].ant_rx2 = (ant == "RX2");
    this->update_atrs();
}

void ant_impl::update_enables(void)
{
    // extract settings from state variables
    const bool enb_tx1 = (_radio_perifs.size() > _fe1)
                         and bool(_radio_perifs[_fe1].tx_streamer.lock());
    const bool enb_rx1 = (_radio_perifs.size() > _fe1)
                         and bool(_radio_perifs[_fe1].rx_streamer.lock());
    const bool enb_tx2 = (_radio_perifs.size() > _fe2)
                         and bool(_radio_perifs[_fe2].tx_streamer.lock());
    const bool enb_rx2 = (_radio_perifs.size() > _fe2)
                         and bool(_radio_perifs[_fe2].rx_streamer.lock());
    const size_t num_rx = (enb_rx1 ? 1 : 0) + (enb_rx2 ? 1 : 0);
    const size_t num_tx = (enb_tx1 ? 1 : 0) + (enb_tx2 ? 1 : 0);
    const bool mimo     = num_rx == 2 or num_tx == 2;

    if ((num_rx + num_tx) == 3) {
        throw uhd::runtime_error(
            "b200: 2 RX 1 TX and 1 RX 2 TX configurations not possible");
    }

    // setup the active chains in the codec
    _codec_ctrl->set_active_chains(enb_tx1, enb_tx2, enb_rx1, enb_rx2);
    if ((num_rx + num_tx) == 0)
        _codec_ctrl->set_active_chains(true, false, true, false); // enable something

    // figure out if mimo is enabled based on new state
    _gpio_state.mimo = (mimo) ? 1 : 0;
    update_gpio_state();

    // atrs change based on enables
    this->update_atrs();
}

/* mirophasse
 * Thiunction is just send 8 bytes to
 * let the fpga konw the which port
 * it should send
 * */
void ant_impl::_program_dispatcher(uhd::transport::zero_copy_if &xport)
{
    transport::managed_send_buffer::sptr buff = xport.get_send_buff();
    buff->cast<uint32_t *>()[0]             =0;
    buff->cast<uint32_t *>()[1]              =uhd::htonx<uint32_t>(MICROPHASE_DATA_RX_WAZZUP_BR0);
    buff->commit(8);
    buff.reset();
}

sensor_value_t ant_impl::get_ref_locked(void)
{
    const bool lock = (_local_ctrl->peek32(RB32_CORE_MISC) & 0x1) == 0x1;
    return sensor_value_t("Ref", lock, "locked", "unlocked");
}

sensor_value_t ant_impl::get_fe_pll_locked(const bool is_tx)
{
    const uint32_t st = _local_ctrl->peek32(RB32_CORE_PLL);
    const bool locked = is_tx ? ((st & 0x1) > 0) : ((st & 0x2) > 0);
    return sensor_value_t("LO", locked, "locked", "unlocked");
}

void ant_impl::set_mb_eeprom()
{
    /* we need do no things */

}
