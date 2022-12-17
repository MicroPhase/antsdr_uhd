//
// Copyright 2012-2013 Ettus Research LLC
// Copyright 2018-2019 Ettus Research, a National Instruments Brand
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#ifndef INCLUDED_B200_IFACE_HPP
#define INCLUDED_B200_IFACE_HPP

#include "uhd/transport/usb_control.hpp"
#include "uhd/types/dict.hpp"
#include "uhd/types/serial.hpp" //i2c iface
#include "uhd/utils/noncopyable.hpp"
#include "uhdlib/usrp/common/ad9361_ctrl.hpp"
#include <stdint.h>
#include <boost/assign/list_of.hpp>
#include <memory>

/* microphase */
enum microphase_produce_t {E310 ,E200 ,ETTUS};

enum b200_product_t { B200, B210, B200MINI, B205MINI };


class UHD_API ant_iface : uhd::noncopyable, public virtual uhd::i2c_iface
{
public:
    typedef std::shared_ptr<ant_iface> sptr;

    /*!
     * Make a b200 interface object from a control transport
     * \param usb_ctrl a USB control transport
     * \return a new b200 interface object
     */
    static sptr make(uhd::transport::usb_control::sptr usb_ctrl);

    //! query the device USB speed (2, 3)
    virtual uint8_t get_usb_speed(void) = 0;

    //! get the current status of the FX3
    virtual uint8_t get_fx3_status(void) = 0;

    //! get the current status of the FX3
    virtual uint16_t get_compat_num(void) = 0;

    //! load a firmware image
    virtual void load_firmware(const std::string filestring, bool force = false) = 0;

    //! reset the FX3
    virtual void reset_fx3(void) = 0;

    //! reset the GPIF state machine
    virtual void reset_gpif(void) = 0;

    //! set the FPGA_RESET line
    virtual void set_fpga_reset_pin(const bool reset) = 0;

    //! load an FPGA image
    virtual uint32_t load_fpga(const std::string filestring, bool force = false) = 0;

    //! load a bootloader image onto device EEPROM
    virtual uint32_t load_bootloader(const std::string filestring) = 0;

    void write_eeprom(
        uint16_t addr, uint16_t offset, const uhd::byte_vector_t& bytes) override = 0;

    uhd::byte_vector_t read_eeprom(
        uint16_t addr, uint16_t offset, size_t num_bytes) override = 0;

    static std::string fx3_state_string(uint8_t state);
};


#endif /* INCLUDED_B200_IFACE_HPP */
