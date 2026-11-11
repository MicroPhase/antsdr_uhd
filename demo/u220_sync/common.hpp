// SPDX-License-Identifier: GPL-3.0-or-later

#pragma once
#include "measurements.hpp"
#include <uhd/device.hpp>
#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/version.hpp>
#include <algorithm>
#include <chrono>
#include <csignal>
#include <cctype>
#include <ctime>
#include <functional>
#include <iomanip>
#include <iostream>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

namespace u220_sync {
using Steady = std::chrono::steady_clock;
inline volatile std::sig_atomic_t interrupted = 0;
inline void stop(int) { interrupted = 1; }
inline void sample_pause() { std::this_thread::sleep_for(std::chrono::milliseconds(20)); }
inline double seconds(Steady::time_point start) {
    return std::chrono::duration<double>(Steady::now() - start).count();
}
struct Options {
    std::string args = "type=b200";
    std::string source = "external";
    double timeout = 90.0, hold = 3.0;
    std::size_t intervals = 5;
    bool help = false;
};
inline Options parse(int argc, char** argv, const std::string& mode) {
    Options o;
    if (mode == "gps") o.timeout = 180.0;
    for (int i = 1; i < argc; ++i) {
        std::string key = argv[i], value;
        if (key == "--help" || key == "-h") { o.help = true; continue; }
        auto eq = key.find('=');
        if (eq != std::string::npos) {
            value = key.substr(eq + 1);
            key = key.substr(0, eq);
        } else {
            if (i + 1 == argc) throw std::runtime_error("Missing value: " + key);
            value = argv[++i];
        }
        if (key == "--args") { o.args = value; continue; }
        if (key == "--time-source" && mode == "pps") { o.source = value; continue; }
        if (key != "--timeout" && key != "--hold" && key != "--intervals")
            throw std::runtime_error("Unknown option: " + key);
        std::size_t used = 0;
        double number = std::stod(value, &used);
        if (used != value.size() || !std::isfinite(number) || number <= 0)
            throw std::runtime_error("Expected positive finite number: " + key);
        if (key == "--timeout") o.timeout = number;
        if (key == "--hold") o.hold = number;
        if (key == "--intervals") {
            if (number != std::floor(number) || number < 2 || number > 1000000)
                throw std::runtime_error("--intervals must be an integer in [2, 1000000]");
            o.intervals = static_cast<std::size_t>(number);
        }
    }
    if (o.source != "external" && o.source != "internal" && o.source != "gpsdo")
        throw std::runtime_error("--time-source must be external, internal or gpsdo");
    return o;
}
inline bool contains(const std::vector<std::string>& list, const std::string& item) {
    return std::find(list.begin(), list.end(), item) != list.end();
}
inline std::string normalized(std::string s) {
    std::string result;
    for (unsigned char c : s) if (std::isalnum(c)) result += std::toupper(c);
    return result;
}
inline void print_list(const std::string& name, const std::vector<std::string>& list) {
    std::cout << name << ":";
    for (const auto& value : list) std::cout << ' ' << value;
    std::cout << '\n';
}
inline std::string utc(long long epoch) {
    const std::time_t value = static_cast<std::time_t>(epoch);
    std::tm tm{};
    char buffer[64]{};
    if (!gmtime_r(&value, &tm)) return "invalid UTC";
    std::strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S UTC", &tm);
    return buffer;
}
class Session {
public:
    uhd::usrp::multi_usrp::sptr usrp;
    std::vector<std::string> sensors;
    std::string original_clock, original_time;
    bool changed = false;
    explicit Session(const Options& o) {
        const auto requested = uhd::device_addr_t(o.args);
        auto devices = uhd::device::find(requested, uhd::device::USRP);
        uhd::device_addrs_t candidates;
        for (const auto& d : devices) {
            auto name = normalized(d.get("name", ""));
            auto product = normalized(d.get("product", ""));
            if (name == "U220" || name == "U220V2"
                || product == "U220" || product == "U220V2") candidates.push_back(d);
        }
        if (candidates.size() != 1)
            throw std::runtime_error("Expected exactly one named U220/U220V2; found "
                + std::to_string(candidates.size()) + ". Use --args type=b200,serial=...; check EEPROM name.");
        auto args = requested;
        args["serial"] = candidates.front().get("serial");
        args["type"] = "b200";
        std::cout << "Runtime UHD: " << uhd::get_version_string() << '\n'
                  << "Selected device: " << candidates.front().to_string() << '\n'
                  << "Open args: " << args.to_string() << std::endl;
        usrp = uhd::usrp::multi_usrp::make(args);
        if (usrp->get_num_mboards() != 1) throw std::runtime_error("One motherboard required");
        sensors = usrp->get_mboard_sensor_names(0);
        original_clock = usrp->get_clock_source(0);
        original_time = usrp->get_time_source(0);
        print_list("Clock sources", usrp->get_clock_sources(0));
        print_list("Time sources", usrp->get_time_sources(0));
        print_list("Sensors", sensors);
        std::cout << "Initial sources: clock=" << original_clock
                  << " time=" << original_time << std::endl;
    }
    void require(const std::string& sensor) const {
        if (!contains(sensors, sensor))
            throw std::runtime_error("Required sensor unavailable: " + sensor
                + "; this is not a lock failure. Check driver/FPGA/GPS detection.");
    }
    bool boolean(const std::string& name) { return usrp->get_mboard_sensor(name, 0).to_bool(); }
    void select(const std::string& clock, const std::string& time) {
        if (!contains(usrp->get_clock_sources(0), clock)
            || !contains(usrp->get_time_sources(0), time))
            throw std::runtime_error("Requested clock/time source not supported");
        if (time == "gpsdo") require("gps_locked");
        changed = true; // restore even if only the first setter succeeds
        usrp->set_clock_source(clock, 0);
        usrp->set_time_source(time, 0);
        std::cout << "Selected sources: clock=" << usrp->get_clock_source(0)
                  << " time=" << usrp->get_time_source(0) << std::endl;
        if (usrp->get_clock_source(0) != clock || usrp->get_time_source(0) != time)
            throw std::runtime_error("Clock/time source readback mismatch");
    }
    ~Session() {
        if (!changed) return;
        try { usrp->set_clock_source(original_clock, 0); }
        catch (const std::exception& e) { std::cerr << "WARNING: clock restore failed: " << e.what() << '\n'; }
        try { usrp->set_time_source(original_time, 0); }
        catch (const std::exception& e) { std::cerr << "WARNING: time source restore failed: " << e.what() << '\n'; }
        std::cout << "Source restoration attempted: clock=" << original_clock
                  << " time=" << original_time << std::endl;
    }
};
inline void print_nmea(Session& s) {
    for (const auto* name : {"gps_gpgga", "gps_gprmc"}) {
        if (!contains(s.sensors, name)) continue;
        try {
            const auto value = s.usrp->get_mboard_sensor(name, 0).value;
            std::cout << name << ": " << value << std::endl;
        }
        catch (const std::exception& e) { std::cerr << name << " unavailable: " << e.what() << '\n'; }
    }
}
inline int result(bool passed, const std::string& detail) {
    if (interrupted) { std::cout << "CANCELLED\n"; return 130; }
    std::cout << (passed ? "PASS: " : "FAIL: ") << detail << std::endl;
    return passed ? 0 : 1;
}
inline int entry(int argc, char** argv, const std::string& mode,
    const std::function<int(Session&, const Options&)>& test) {
    try {
        auto o = parse(argc, argv, mode);
        if (o.help) {
            std::cout << "Usage: " << argv[0]
                      << " [--args type=b200,serial=YOUR_SERIAL] [--timeout SECONDS]"
                         " [--hold SECONDS] [--intervals COUNT]\n";
            if (mode == "pps") std::cout << "  [--time-source external|gpsdo|internal] (default external)\n";
            std::cout << "Exit: 0=pass, 1=criteria not met, 2=setup/runtime error, 130=interrupted\n"
                         "U220 FPGA mapping only. No RF transmission or time-counter writes.\n";
            return 0;
        }
        std::signal(SIGINT, stop);
        std::signal(SIGTERM, stop);
        std::cout << std::fixed << std::setprecision(6);
        Session s(o);
        return test(s, o);
    } catch (const std::exception& e) {
        std::cerr << "ERROR: " << e.what() << std::endl;
        return interrupted ? 130 : 2;
    }
}
} // namespace u220_sync
