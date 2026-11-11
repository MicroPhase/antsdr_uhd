// SPDX-License-Identifier: GPL-3.0-or-later

#pragma once
#include <cmath>
#include <cstddef>

// FPGA timestamps measure PPS period; host time only detects missing updates.
// Polling latency is NOT interpreted as PPS phase error.
struct PpsMonitor {
    bool initialized = false;
    double last = 0.0, changed_at = 0.0, delta = 0.0;
    std::size_t edges = 0, good_intervals = 0, bad_intervals = 0;
    bool observe(double stamp, double now) {
        if (!initialized) {
            initialized = true;
            last = stamp;
            changed_at = now;
            return false;
        }
        if (stamp == last) {
            if (now - changed_at > 1.7) good_intervals = 0;
            return false;
        }
        delta = stamp - last;
        const double host_gap = now - changed_at;
        ++edges;
        if (std::isfinite(delta) && std::abs(delta - 1.0) <= 0.005
            && host_gap <= 1.7 && host_gap >= 0.0) {
            ++good_intervals;
        } else {
            good_intervals = 0;
            ++bad_intervals;
        }
        last = stamp;
        changed_at = now;
        return true;
    }
    bool ready(std::size_t count, double now) const {
        return initialized && good_intervals >= count && now - changed_at <= 1.7;
    }
};

struct LockMonitor {
    bool active = false;
    double since = 0.0;
    void observe(bool locked, double now) {
        if (locked && !active) since = now;
        active = locked;
    }
    double duration(double now) const { return active ? now - since : 0.0; }
    bool ready(double hold, double now) const {
        return active && duration(now) >= hold;
    }
};
