// SPDX-License-Identifier: GPL-3.0-or-later

#include <uhd/types/serial.hpp>
#include <uhdlib/usrp/gps_ctrl.hpp>
#include <boost/test/unit_test.hpp>
#include <algorithm>
#include <deque>
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

    std::vector<std::string> writes;

private:
    std::deque<std::string> _replies;
};

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
