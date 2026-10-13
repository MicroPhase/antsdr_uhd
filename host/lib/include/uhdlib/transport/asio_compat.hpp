// SPDX-License-Identifier: GPL-3.0-or-later
#pragma once

#include <boost/asio.hpp>
#include <boost/version.hpp>
#include <cstdint>
#include <string>

namespace uhd { namespace transport {

// Boost 1.66 introduced these APIs; UHD also supports Boost 1.65.
#if BOOST_VERSION >= 106600
using asio_context = boost::asio::io_context;
using asio_resolver_base = boost::asio::ip::resolver_base;
#else
using asio_context = boost::asio::io_service;
using asio_resolver_base = boost::asio::ip::resolver_query_base;
#endif

template <typename Protocol>
typename Protocol::endpoint resolve_asio_endpoint(asio_context& context,
    const std::string& addr,
    const std::string& port,
    asio_resolver_base::flags flags = asio_resolver_base::address_configured)
{
    typename Protocol::resolver resolver(context);
#if BOOST_VERSION >= 106600
    return resolver.resolve(Protocol::v4(), addr, port, flags).begin()->endpoint();
#else
    typename Protocol::resolver::query query(Protocol::v4(), addr, port, flags);
    return *resolver.resolve(query);
#endif
}

inline uint32_t asio_address_to_uint(const boost::asio::ip::address_v4& address)
{
#if BOOST_VERSION >= 106600
    return address.to_uint();
#else
    return static_cast<uint32_t>(address.to_ulong());
#endif
}

}} // namespace uhd::transport
