// SPDX-License-Identifier: GPL-3.0-or-later

#include <uhd/types/serial.hpp>
#include <uhd/exception.hpp>
#include <uhdlib/usrp/gps_ctrl.hpp>
#include <boost/test/unit_test.hpp>
#include <algorithm>
#include <deque>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>

namespace {

class mock_uart : public uhd::uart_iface
{
public:
    explicit mock_uart(std::deque<std::string> replies) : _replies(std::move(replies)) {}

    void write_uart(const std::string& buf) override { writes.push_back(buf); }

    std::string read_uart(double /*timeout*/) override
    {
        if (_replies.empty()) {
            return {};
        }
        std::string reply = _replies.front();
        _replies.pop_front();
        return reply;
    }

    void enqueue(std::initializer_list<std::string> replies)
    {
        _replies.insert(_replies.end(), replies.begin(), replies.end());
    }

    std::vector<std::string> writes;

private:
    std::deque<std::string> _replies;
};

std::string nmea(const std::string& body)
{
    unsigned char checksum = 0;
    for (const unsigned char ch : body) {
        checksum ^= ch;
    }
    std::ostringstream reply;
    reply << "$" << body << "*" << std::uppercase << std::hex << std::setw(2)
          << std::setfill('0') << static_cast<unsigned>(checksum) << "\r\n";
    return reply.str();
}

std::string rmc(const std::string& talker, const std::string& time = "120000.00")
{
    return nmea(talker + "RMC," + time
        + ",A,0000.00000,N,00000.00000,E,0.000,,041126,,,A");
}

std::shared_ptr<mock_uart> make_nmea_uart(const std::string& talker)
{
    return std::make_shared<mock_uart>(std::deque<std::string>{"",
        nmea(talker + "GGA,120000.00,0000.00000,N,00000.00000,E,1,08,1.00,0.0,M,0.0,M,,")});
}

} // namespace

BOOST_AUTO_TEST_CASE(test_u220_gps_accepts_gn_nmea_and_initializes_ublox)
{
    auto uart = std::make_shared<mock_uart>(
        std::deque<std::string>{"", "$GNGGA,1*55\r\n", "$GNRMC,1*48\r\n"});

    auto gps = uhd::gps_ctrl::make(uart, true);

    BOOST_REQUIRE(gps->gps_detected());
    BOOST_CHECK(std::find(uart->writes.begin(), uart->writes.end(), "*IDN?\r\n")
                != uart->writes.end());

    const std::string ubx_cfg_rate = std::string(
        "\xB5\x62\x06\x31\x20\x00\x01\x01\x00\x00\x00\x00\x00\x00\x01\x00"
        "\x00\x00\x80\x96\x98\x00\x00\x00\x00\x80\x00\x00\x00\x80\x00\x00"
        "\x00\x00\xEF\x00\x00\x00\xF7\xB0\r\n",
        42);
    BOOST_CHECK(std::find(uart->writes.begin(), uart->writes.end(), ubx_cfg_rate)
                != uart->writes.end());
}

BOOST_AUTO_TEST_CASE(test_u220_rmc_with_final_mode_field_is_available)
{
    auto uart = make_nmea_uart("GN");
    auto gps = uhd::gps_ctrl::make(uart, true);
    BOOST_REQUIRE(gps->gps_detected());
    const auto reply = rmc("GN");
    uart->enqueue({reply});
    BOOST_CHECK_EQUAL(gps->get_sensor("gps_gprmc").value,
        reply.substr(0, reply.size() - 2));
}

BOOST_AUTO_TEST_CASE(test_standard_gp_rmc_with_final_mode_field_is_available)
{
    auto uart = make_nmea_uart("GP");
    auto gps = uhd::gps_ctrl::make(uart);
    BOOST_REQUIRE(gps->gps_detected());
    const auto reply = rmc("GP");
    uart->enqueue({reply});
    BOOST_CHECK_EQUAL(gps->get_sensor("gps_gprmc").value,
        reply.substr(0, reply.size() - 2));
}

BOOST_AUTO_TEST_CASE(test_u220_gps_time_reads_fresh_rmc_utc)
{
    auto uart = make_nmea_uart("GN");
    auto gps = uhd::gps_ctrl::make(uart, true);
    // Empty reads separate UART batches. gps_time must wait for the new RMC.
    uart->enqueue({rmc("GN", "120000.00"), "", rmc("GN", "120001.00"), ""});
    // 2026-11-04 12:00:01 UTC, independent of the host timezone.
    BOOST_CHECK_EQUAL(gps->get_sensor("gps_time").to_int(), 1793793601);
}

BOOST_AUTO_TEST_CASE(test_u220_rmc_with_bad_checksum_is_not_cached)
{
    auto uart = make_nmea_uart("GN");
    auto gps = uhd::gps_ctrl::make(uart, true);
    auto reply = rmc("GN");
    reply[reply.size() - 3] = reply[reply.size() - 3] == '0' ? '1' : '0';
    uart->enqueue({reply});
    BOOST_CHECK_THROW(gps->get_sensor("gps_gprmc"), uhd::value_error);
}
