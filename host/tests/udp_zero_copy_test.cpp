// SPDX-License-Identifier: GPL-3.0-or-later
#include <uhd/transport/udp_zero_copy.hpp>
#include <uhdlib/transport/udp_send_buffer.hpp>
#include <boost/test/unit_test.hpp>
#include <boost/version.hpp>
#include <chrono>
#include <cstring>
#include <functional>
#include <stdexcept>
#include <thread>
#include <vector>

using namespace uhd::transport;
using udp = boost::asio::ip::udp;

namespace {
#if BOOST_VERSION >= 106600
using test_context = boost::asio::io_context;
#else
using test_context = boost::asio::io_service;
#endif
} // namespace

static udp_zero_copy::sptr make_transport(const udp::socket& peer, size_t frame_size = 1472)
{
    zero_copy_xport_params params;
    params.send_frame_size = frame_size;
    params.recv_frame_size = 1472;
    params.num_send_frames = 1;
    params.num_recv_frames = 1;
    params.send_buff_size = params.recv_buff_size = 65536;
    udp_zero_copy::buff_params actual;
    return udp_zero_copy::make("127.0.0.1",
        std::to_string(peer.local_endpoint().port()), params, actual);
}

static std::string error_message(const std::function<void()>& operation)
{
    try {
        operation();
    } catch (const uhd::io_error& ex) {
        return ex.what();
    }
    BOOST_FAIL("Expected a latched UDP send error");
    return {};
}

BOOST_AUTO_TEST_CASE(delivery_and_bounded_receive)
{
    test_context context;
    udp::socket peer(context, udp::endpoint(boost::asio::ip::address_v4::loopback(), 0));
    auto transport = make_transport(peer);
    for (int attempt = 0; attempt < 2; ++attempt) {
        {
            auto buffer = transport->get_send_buff();
            BOOST_REQUIRE(buffer);
            std::memcpy(buffer->cast<void*>(), "hello", 5);
            buffer->commit(5);
        }
        BOOST_REQUIRE(wait_for_recv_ready(peer.native_handle(), 1000));
        char packet[32] = {};
        udp::endpoint source;
        const auto count = peer.receive_from(boost::asio::buffer(packet), source);
        BOOST_CHECK_EQUAL(count, 5);
        BOOST_CHECK_EQUAL(std::string(packet, count), "hello");
        peer.send_to(boost::asio::buffer(packet, count), source);
        auto reply = transport->get_recv_buff(0.1);
        BOOST_REQUIRE(reply);
        BOOST_CHECK_EQUAL(std::string(reply->cast<char*>(), reply->size()), "hello");
    }
    const auto start = std::chrono::steady_clock::now();
    BOOST_CHECK(!transport->get_recv_buff(0.02));
    BOOST_CHECK(std::chrono::steady_clock::now() - start < std::chrono::seconds(1));
}

BOOST_AUTO_TEST_CASE(destructor_failure_is_reported_by_transport)
{
    test_context context;
    udp::socket peer(context, udp::endpoint(boost::asio::ip::address_v4::loopback(), 0));
    // A UDP datagram cannot hold 65536 bytes. The real send syscall fails
    // deterministically with EMSGSIZE when this buffer leaves scope.
    auto transport = make_transport(peer, 65536);
    try {
        auto buffer = transport->get_send_buff();
        BOOST_REQUIRE(buffer);
        std::memset(buffer->cast<void*>(), 0, buffer->size());
        buffer->commit(65536);
        throw std::runtime_error("original unwind");
    } catch (const std::runtime_error& ex) {
        BOOST_CHECK_EQUAL(ex.what(), "original unwind");
    }
    const auto start = std::chrono::steady_clock::now();
    const auto message = error_message([&] { transport->get_recv_buff(5.0); });
    BOOST_CHECK(std::chrono::steady_clock::now() - start < std::chrono::seconds(1));
    BOOST_CHECK(message.find("127.0.0.1:" + std::to_string(peer.local_endpoint().port()))
        != std::string::npos);
    BOOST_CHECK(message.find(std::strerror(EMSGSIZE)) != std::string::npos);
    BOOST_CHECK(message.find("errno " + std::to_string(EMSGSIZE)) != std::string::npos);
    BOOST_CHECK_EQUAL(error_message([&] { transport->get_send_buff(); }), message);
    BOOST_CHECK_EQUAL(error_message([&] { transport->get_recv_buff(); }), message);
    transport.reset(); // Must complete without SIGABRT.
}

BOOST_AUTO_TEST_CASE(failed_release_returns_buffer_and_preserves_first_error)
{
    char memory[32] = {};
    auto error = std::make_shared<udp_send_error>("127.0.0.1:49101");
    udp_zero_copy_asio_msb buffer(memory, -1, sizeof(memory), error);
    size_t index = 0;
    { auto held = buffer.get_new(0.01, index); BOOST_REQUIRE(held); held->commit(8); }
    const auto message = error_message([&] { error->rethrow_if_pending(); });
    BOOST_CHECK(message.find(std::strerror(EBADF)) != std::string::npos);
    error->record(std::make_exception_ptr(uhd::io_error("later failure")));
    BOOST_CHECK_EQUAL(error_message([&] { error->rethrow_if_pending(); }), message);
    // Exercise the actual claimer after the failed send, bypassing the
    // transport's intentionally persistent error state.
    { auto held = buffer.get_new(0.0, index); BOOST_REQUIRE(held); held->commit(0); }
    BOOST_CHECK_EQUAL(index, 2);
}

BOOST_AUTO_TEST_CASE(concurrent_failures_preserve_original_error)
{
    udp_send_error error("127.0.0.1:49101");
    error.record(std::make_exception_ptr(uhd::io_error("first failure")));
    std::vector<std::thread> workers;
    for (size_t i = 0; i < 8; ++i) {
        workers.emplace_back([&] {
            for (size_t n = 0; n < 100; ++n) {
                error.record(std::make_exception_ptr(uhd::io_error("later failure")));
                try { error.rethrow_if_pending(); } catch (const uhd::io_error&) {}
            }
        });
    }
    for (auto& worker : workers) { worker.join(); }
    BOOST_CHECK(error_message([&] { error.rethrow_if_pending(); }).find("first failure")
        != std::string::npos);
}

BOOST_AUTO_TEST_CASE(send_buffer_exhaustion_has_a_bounded_retry)
{
    char memory[8] = {};
    size_t attempts = 0;
    const auto start = std::chrono::steady_clock::now();
    const auto message = error_message([&] {
        send_udp_packet_with_retry(-1, memory, sizeof(memory),
            [&](int, const char*, size_t, int) -> ssize_t {
                ++attempts;
                errno = ENOBUFS;
                return -1;
            });
    });
    BOOST_CHECK(attempts > 1);
    BOOST_CHECK(std::chrono::steady_clock::now() - start < std::chrono::seconds(1));
    BOOST_CHECK(message.find(std::strerror(ENOBUFS)) != std::string::npos);
    attempts = 0;
    send_udp_packet_with_retry(-1, memory, sizeof(memory),
        [&](int, const char*, size_t len, int) -> ssize_t {
            if (++attempts == 1) { errno = ENOBUFS; return -1; }
            return static_cast<ssize_t>(len);
        });
    BOOST_CHECK_EQUAL(attempts, 2);
}
