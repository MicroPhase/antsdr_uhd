//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#pragma once

#include <uhd/types/device_addr.hpp>
#include <cctype>
#include <cstdint>
#include <string>

//! Selects which Ettus B-series RF/control profile an AntSDR USB board uses.
enum class antsdr_b200_mapping
{
    NONE,
    B210,
    B205
};

inline std::string normalize_antsdr_b200_product(const std::string& product)
{
    std::string normalized;
    normalized.reserve(product.size());
    for (const unsigned char value : product) {
        if (std::isalnum(value)) {
            normalized.push_back(static_cast<char>(std::toupper(value)));
        }
    }
    return normalized;
}

inline antsdr_b200_mapping get_antsdr_b200_mapping(const uhd::device_addr_t& device_addr)
{
    for (const char* key : {"name", "product"}) {
        const std::string product =
            normalize_antsdr_b200_product(device_addr.get(key, ""));
        if (product == "U220" || product == "U220V2") {
            return antsdr_b200_mapping::B210;
        }
        if (product == "U200") {
            return antsdr_b200_mapping::B205;
        }
    }
    return antsdr_b200_mapping::NONE;
}

inline bool is_antsdr_u220_gps_profile(const uhd::device_addr_t& device_addr)
{
    for (const char* key : {"name", "product"}) {
        const std::string product =
            normalize_antsdr_b200_product(device_addr.get(key, ""));
        if (product == "U220" || product == "U220V2") {
            return true;
        }
    }
    return false;
}

//! Return the GPS module UART baud rate for an AntSDR/B-series profile.
inline uint32_t get_antsdr_b200_gps_baud(const uhd::device_addr_t& device_addr)
{
    // AntSDR U220/U220V2 use a 9600-baud GPS module. Standard B-series
    // GPSDOs, and the U200/B205 compatibility profile, use 115200 baud.
    return is_antsdr_u220_gps_profile(device_addr) ? 9600U : 115200U;
}
