// SPDX-License-Identifier: GPL-3.0-or-later

#include "common.hpp"
using namespace u220_sync;
int main(int argc, char** argv) {
    return entry(argc, argv, "gps", [](Session& s, const Options& o) {
        for (const auto* sensor : {"gps_locked", "gps_time", "ref_locked"}) s.require(sensor);
        // time_source=gpsdo selects the physical GPS PPS in this U220 RTL.
        // Do not select clock_source=gpsdo: the module supplies NMEA/PPS,
        // not a separate Ettus-style GPSDO 10 MHz output.
        s.select("internal", "gpsdo");
        print_nmea(s);
        std::cout << "GPS UART uses the driver's U220 9600-baud profile.\n"
                     "Phase 1: fresh GPS UTC advances with a valid fix.\n";
        const auto start = Steady::now();
        long long previous_epoch = 0;
        bool have_epoch = false, gps_ok = false;
        std::size_t advancing = 0;
        while (!interrupted && seconds(start) < o.timeout) {
            try {
                gps_ok = s.boolean("gps_locked");
                std::cout << "t=" << seconds(start) << " gps_locked=" << gps_ok << std::endl;
                if (!gps_ok) {
                    advancing = 0;
                    have_epoch = false;
                    std::this_thread::sleep_for(std::chrono::seconds(1));
                    continue;
                }
                const long long epoch = s.usrp->get_mboard_sensor("gps_time", 0).to_int();
                if (have_epoch && gps_ok && epoch > previous_epoch
                    && epoch - previous_epoch <= 3) ++advancing;
                else advancing = 0;
                previous_epoch = epoch;
                have_epoch = true;
                std::cout << "t=" << seconds(start) << " gps_locked=" << gps_ok
                          << " gps_epoch=" << epoch << " " << utc(epoch)
                          << " advancing_updates=" << advancing << std::endl;
                if (gps_ok && advancing >= 2) break;
            } catch (const std::exception& e) {
                advancing = 0;
                have_epoch = false;
                std::cerr << "GPS read pending/failed: " << e.what() << std::endl;
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(500));
        }
        if (!gps_ok || advancing < 2)
            return result(false, "no valid, advancing GPS fix before timeout; UART detection alone is not GPS lock");
        print_nmea(s);
        std::cout << "Phase 2: GPS PPS intervals and oscillator disciplining lock.\n";
        PpsMonitor pps;
        LockMonitor lock;
        double next = 0.0;
        while (!interrupted && seconds(start) < o.timeout) {
            const double stamp = s.usrp->get_time_last_pps(0).get_real_secs();
            double now = seconds(start);
            if (pps.observe(stamp, now))
                std::cout << "GPS PPS t=" << now << " fpga_last_pps=" << stamp
                          << " delta=" << pps.delta << " good_intervals="
                          << pps.good_intervals << std::endl;
            if (now >= next) {
                try {
                    gps_ok = s.boolean("gps_locked");
                    const bool ref = s.boolean("ref_locked");
                    now = seconds(start);
                    lock.observe(gps_ok && ref, now);
                    std::cout << "STATUS t=" << now << " gps_locked=" << gps_ok
                              << " ref_locked=" << ref << " observed_lock_s="
                              << lock.duration(now) << std::endl;
                } catch (const std::exception& e) {
                    gps_ok = false;
                    lock.observe(false, seconds(start));
                    std::cerr << "GPS sensor read failed: " << e.what() << std::endl;
                }
                next = seconds(start) + 1.0;
            }
            if (gps_ok && pps.ready(o.intervals, seconds(start))
                && lock.ready(o.hold, seconds(start)))
                return result(true, "GPS fix, advancing UTC, GPS PPS and reference-loop lock observed; absolute FPGA UTC was not set");
            sample_pause();
        }
        return result(false, "GPS fix was observed but GPS PPS/reference lock criteria did not complete");
    });
}
