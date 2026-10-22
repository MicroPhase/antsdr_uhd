// Copyright 2012-2015 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
// SPDX-License-Identifier: GPL-3.0-or-later
#pragma once

#include <uhd/exception.hpp>
#include <cstdint>
#include <cerrno>
#include <cstring>
#include <iomanip>
#include <sstream>
#include <string>
#ifndef _WIN32
#include <fcntl.h>
#include <sys/file.h>
#include <sys/stat.h>
#include <unistd.h>
#endif

namespace {
#ifndef _WIN32
inline uint64_t stable_device_hash(const std::string& value)
{
    // This is intentionally identical to the IQTAXI lock key algorithm so
    // the legacy ANT backend and IQTAXI cannot open the same radio together.
    uint64_t hash = UINT64_C(14695981039346656037);
    for (const unsigned char byte : value) {
        hash ^= byte;
        hash *= UINT64_C(1099511628211);
    }
    return hash;
}

inline std::string device_lock_path(const std::string& address)
{
    std::ostringstream path;
#ifdef __APPLE__
    path << "/tmp/iqtaxi-device-" << std::hex << std::setw(16)
#else
    path << "/run/lock/iqtaxi-device-" << std::hex << std::setw(16)
#endif
         << std::setfill('0') << stable_device_hash(address) << ".lock";
    return path.str();
}
#endif

}

class ant_device_process_lock
{
public:
    explicit ant_device_process_lock(const std::string& address)
    {
#ifndef _WIN32
        const std::string identity = address.empty() ? "default" : address;
        const std::string path = device_lock_path(identity);
        _fd = ::open(path.c_str(), O_RDWR | O_CREAT | O_CLOEXEC | O_NOFOLLOW, 0666);
        if (_fd < 0) {
            throw uhd::runtime_error(
                "ANTSDR cannot create device lock " + path + ": " + std::strerror(errno));
        }

        // This runs before ant_impl creates any transport or sends a control
        // command, so a rejected process cannot disturb an active IQ stream.
        if (::flock(_fd, LOCK_EX | LOCK_NB) != 0) {
            const int lock_error = errno;
            char owner[256] = {};
            (void)::lseek(_fd, 0, SEEK_SET);
            const ssize_t owner_len = ::read(_fd, owner, sizeof(owner) - 1u);
            (void)::close(_fd);
            _fd = -1;

            std::string detail;
            if (owner_len > 0) {
                detail.assign(owner, static_cast<size_t>(owner_len));
                while (!detail.empty()
                       && (detail.back() == '\n' || detail.back() == '\r')) {
                    detail.pop_back();
                }
            }
            if (lock_error == EWOULDBLOCK || lock_error == EAGAIN) {
                throw uhd::runtime_error(
                    "ANTSDR device " + identity + " is busy"
                    + (detail.empty() ? std::string() : " (owner: " + detail + ")"));
            }
            throw uhd::runtime_error(
                "ANTSDR cannot lock device " + identity + ": "
                + std::strerror(lock_error));
        }

        // A restrictive umask must not prevent a later user from opening the
        // persistent lock file. flock still provides the actual exclusion.
        (void)::fchmod(_fd, 0666);
        const std::string owner = "pid="
                                  + std::to_string(static_cast<long long>(::getpid()))
                                  + " backend=antsdr_uhd addr=" + identity + "\n";
        const int truncate_result = ::ftruncate(_fd, 0);
        (void)::lseek(_fd, 0, SEEK_SET);
        const ssize_t write_result = ::write(_fd, owner.data(), owner.size());
        (void)truncate_result;
        (void)write_result;
#else
        (void)address;
#endif
    }

    ~ant_device_process_lock()
    {
#ifndef _WIN32
        if (_fd >= 0) {
            (void)::flock(_fd, LOCK_UN);
            (void)::close(_fd);
        }
#endif
    }

    ant_device_process_lock(const ant_device_process_lock&) = delete;
    ant_device_process_lock& operator=(const ant_device_process_lock&) = delete;

private:
#ifndef _WIN32
    int _fd = -1;
#endif
};
