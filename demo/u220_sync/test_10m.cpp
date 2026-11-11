// SPDX-License-Identifier: GPL-3.0-or-later

#include "common.hpp"
using namespace u220_sync;
int main(int argc, char** argv) {
    return entry(argc, argv, "10m", [](Session& s, const Options& o) {
        s.require("ref_locked");
        // In this U220 RTL: pps_select=2 and ref_sel=0 selects CLKIN_10MHz.
        s.select("external", "internal");
        std::cout << "Connect an external 10 MHz reference to U220 CLKIN_10MHz.\n"
                     "ref_locked is FPGA disciplining-loop status, not a frequency measurement.\n";
        const auto start = Steady::now();
        LockMonitor lock;
        double next = 0.0;
        while (!interrupted && seconds(start) < o.timeout) {
            double now = seconds(start);
            if (now >= next) {
                bool value = s.boolean("ref_locked");
                now = seconds(start);
                lock.observe(value, now);
                std::cout << "t=" << now << " ref_locked=" << value
                          << " observed_lock_s=" << lock.duration(now) << std::endl;
                if (lock.ready(o.hold, now))
                    return result(true, "external 10 MHz reference loop stayed locked for the requested observation");
                next = now + 1.0;
            }
            sample_pause();
        }
        return result(false, "10 MHz lock criterion not met before timeout; check input, routing and settling time");
    });
}
