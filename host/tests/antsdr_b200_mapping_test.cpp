//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#include "../lib/usrp/b200/antsdr_b200_mapping.hpp"
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE(test_u220_family_uses_b210_mapping)
{
    BOOST_CHECK_EQUAL(
        static_cast<int>(get_antsdr_b200_mapping(uhd::device_addr_t("name=U220"))),
        static_cast<int>(antsdr_b200_mapping::B210));
    BOOST_CHECK_EQUAL(
        static_cast<int>(get_antsdr_b200_mapping(uhd::device_addr_t("product=U220V2"))),
        static_cast<int>(antsdr_b200_mapping::B210));
}

BOOST_AUTO_TEST_CASE(test_u200_uses_b205_mapping)
{
    BOOST_CHECK_EQUAL(
        static_cast<int>(get_antsdr_b200_mapping(uhd::device_addr_t("name=U200"))),
        static_cast<int>(antsdr_b200_mapping::B205));
}

BOOST_AUTO_TEST_CASE(test_non_antsdr_device_has_no_override)
{
    BOOST_CHECK_EQUAL(
        static_cast<int>(get_antsdr_b200_mapping(uhd::device_addr_t("name=B210"))),
        static_cast<int>(antsdr_b200_mapping::NONE));
}

BOOST_AUTO_TEST_CASE(test_u220_gps_uses_9600_baud)
{
    BOOST_CHECK_EQUAL(
        get_antsdr_b200_gps_baud(uhd::device_addr_t("name=U220")), 9600U);
    BOOST_CHECK_EQUAL(
        get_antsdr_b200_gps_baud(uhd::device_addr_t("product=U220V2")), 9600U);
}

BOOST_AUTO_TEST_CASE(test_standard_b210_gps_uses_115200_baud)
{
    BOOST_CHECK_EQUAL(
        get_antsdr_b200_gps_baud(uhd::device_addr_t("name=B210")), 115200U);
    BOOST_CHECK_EQUAL(
        get_antsdr_b200_gps_baud(uhd::device_addr_t("name=U200")), 115200U);
}
