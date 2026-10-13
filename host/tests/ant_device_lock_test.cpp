// SPDX-License-Identifier: GPL-3.0-or-later
#include "../lib/usrp/ant/ant_device_process_lock.hpp"
#include <boost/test/unit_test.hpp>
#include <sys/wait.h>

BOOST_AUTO_TEST_CASE(platform_path_and_stable_identity)
{
    const std::string expected_suffix = "iqtaxi-device-e53312e8303c30fe.lock";
#ifdef __APPLE__
    BOOST_CHECK_EQUAL(device_lock_path("192.168.8.200"), "/tmp/" + expected_suffix);
#else
    BOOST_CHECK_EQUAL(device_lock_path("192.168.8.200"), "/run/lock/" + expected_suffix);
#endif
}

BOOST_AUTO_TEST_CASE(contention_and_reopen_after_process_exit)
{
    const std::string identity = "lock-regression-" + std::to_string(::getpid());
    int ready[2], finish[2];
    BOOST_REQUIRE_EQUAL(::pipe(ready), 0);
    BOOST_REQUIRE_EQUAL(::pipe(finish), 0);
    const pid_t owner = ::fork();
    BOOST_REQUIRE(owner >= 0);
    if (owner == 0) {
        ::close(ready[0]);
        ::close(finish[1]);
        try {
            ant_device_process_lock lock(identity);
            char token = 'r';
            if (::write(ready[1], &token, 1) != 1) { ::_exit(2); }
            if (::read(finish[0], &token, 1) != 1) { ::_exit(3); }
            ::_exit(0); // Deliberately bypass destruction: OS must release flock.
        } catch (...) { ::_exit(4); }
    }
    ::close(ready[1]);
    ::close(finish[0]);
    char token = 0;
    const auto count = ::read(ready[0], &token, 1);
    bool rejected = false;
    if (count == 1) {
        try { ant_device_process_lock contender(identity); }
        catch (const uhd::runtime_error& ex) {
            const std::string message = ex.what();
            rejected = message.find("is busy") != std::string::npos
                && message.find("pid=" + std::to_string(owner)) != std::string::npos;
        }
        token = 'x';
        (void)::write(finish[1], &token, 1);
    }
    ::close(ready[0]);
    ::close(finish[1]);
    int status = 0;
    BOOST_REQUIRE_EQUAL(::waitpid(owner, &status, 0), owner);
    BOOST_REQUIRE(WIFEXITED(status));
    BOOST_REQUIRE_EQUAL(WEXITSTATUS(status), 0);
    BOOST_CHECK(rejected);
    { ant_device_process_lock reopened(identity); }
    BOOST_CHECK_EQUAL(::unlink(device_lock_path(identity).c_str()), 0);
}
