// SPDX-License-Identifier: GPL-3.0-or-later

#include "common.hpp"
using namespace u220_sync;
int main(int argc, char** argv) {
    return entry(argc, argv, "pps", [](Session& s, const Options& o) {
        s.require("ref_locked");
        s.select("internal", o.source);
        const bool check_lock = o.source != "internal";
        std::cout << "Watching PPS source=" << o.source << "; need " << o.intervals
                  << " consecutive ~1 s FPGA timestamp intervals.\n";
        if (!check_lock)
            std::cout << "INTERNAL SELF-CHECK ONLY: cannot establish external PPS, GPS or 10 MHz lock.\n";
        const auto start = Steady::now();
        PpsMonitor pps;
        LockMonitor lock;
        double next = 0.0;
        while (!interrupted && seconds(start) < o.timeout) {
            auto stamp = s.usrp->get_time_last_pps(0).get_real_secs();
            double now = seconds(start);
            bool edge = pps.observe(stamp, now);
            if (edge) std::cout << "PPS t=" << now << " fpga_last_pps=" << stamp
                                << " delta=" << pps.delta << " good_intervals="
                                << pps.good_intervals << std::endl;
            if (now >= next) {
                const bool ref = s.boolean("ref_locked");
                const bool gps = o.source != "gpsdo" || s.boolean("gps_locked");
                now = seconds(start);
                lock.observe(ref && gps, now);
                std::cout << "STATUS t=" << now << " ref_locked=" << ref;
                if (o.source == "gpsdo") std::cout << " gps_locked=" << gps;
                std::cout << " observed_lock_s=" << lock.duration(now)
                          << " good_intervals=" << pps.good_intervals << std::endl;
                next = now + 1.0;
            }
            if (pps.ready(o.intervals, seconds(start))
                && (!check_lock || lock.ready(o.hold, seconds(start))))
                return result(true, check_lock ? "selected PPS is advancing at ~1 Hz and reference loop is locked"
                                              : "internal PPS counter self-check only");
            sample_pause();
        }
        return result(false, "PPS/lock criteria not met; pulses and oscillator lock are distinct checks");
    });
}
