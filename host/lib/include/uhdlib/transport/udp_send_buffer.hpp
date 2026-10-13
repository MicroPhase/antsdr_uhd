// Copyright 2010-2013 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
// SPDX-License-Identifier: GPL-3.0-or-later
#pragma once

#include <uhd/transport/zero_copy.hpp>
#include <uhdlib/transport/udp_common.hpp>
#include <uhdlib/utils/atomic.hpp>
#include <atomic>
#include <exception>
#include <mutex>
#include <utility>

namespace uhd { namespace transport {

// Buffer release runs from intrusive_ptr destruction. Keep the original
// exception until an operation with a caller able to handle it can report it.
class udp_send_error
{
public:
    explicit udp_send_error(std::string destination)
        : _destination(std::move(destination))
    {
    }

    void record(std::exception_ptr error)
    {
        std::lock_guard<std::mutex> lock(_mutex);
        if (!_error) {
            _error = std::move(error);
            _pending.store(true, std::memory_order_release);
        }
    }

    void rethrow_if_pending() const
    {
        if (!_pending.load(std::memory_order_acquire)) {
            return;
        }
        std::exception_ptr error;
        {
            std::lock_guard<std::mutex> lock(_mutex);
            error = _error;
        }
        if (error) {
            try {
                std::rethrow_exception(error);
            } catch (const std::exception& ex) {
                throw uhd::io_error("UDP send to " + _destination + " failed: " + ex.what());
            } catch (...) {
                throw uhd::io_error("UDP send to " + _destination + " failed: unknown error");
            }
        }
    }

private:
    const std::string _destination;
    std::atomic<bool> _pending{false};
    mutable std::mutex _mutex;
    std::exception_ptr _error;
};

class udp_zero_copy_asio_msb : public managed_send_buffer
{
public:
    udp_zero_copy_asio_msb(void* mem,
        int sock_fd,
        const size_t frame_size,
        std::shared_ptr<udp_send_error> error)
        : _mem(mem), _sock_fd(sock_fd), _frame_size(frame_size), _error(std::move(error))
    {
    }

    void release() noexcept override
    {
        try {
            _error->rethrow_if_pending();
            send_udp_packet(_sock_fd, _mem, size());
        } catch (...) {
            _error->record(std::current_exception());
        }
        _claimer.release();
    }

    UHD_INLINE sptr get_new(const double timeout, size_t& index)
    {
        if (!_claimer.claim_with_wait(timeout)) {
            return sptr();
        }
        index++;
        return make(this, _mem, _frame_size);
    }

private:
    void* _mem;
    int _sock_fd;
    size_t _frame_size;
    std::shared_ptr<udp_send_error> _error;
    simple_claimer _claimer;
};

}} // namespace uhd::transport
