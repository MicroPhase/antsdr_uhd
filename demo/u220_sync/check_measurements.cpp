// SPDX-License-Identifier: GPL-3.0-or-later

#include "measurements.hpp"
#include <iostream>
#include <stdexcept>
void check(bool ok, const char* message) { if (!ok) throw std::runtime_error(message); }
int main() {
    PpsMonitor p;
    p.observe(0, 0);
    for (int i=1; i<=6; ++i) p.observe(i, i);
    check(p.ready(5, 6), "normal 1 Hz PPS should pass");
    p.observe(6, 8);
    check(!p.ready(5, 8), "frozen PPS after prior success must fail");
    p.observe(7, 8.1);
    check(p.good_intervals == 0, "late returning PPS cannot retain prior streak");
    PpsMonitor jumped;
    jumped.observe(10, 0); jumped.observe(12, 1);
    check(jumped.good_intervals == 0, "skipped PPS seconds must fail");
    jumped.observe(11, 2);
    check(jumped.good_intervals == 0, "backward timestamp must fail");
    PpsMonitor fast;
    fast.observe(0, 0); fast.observe(0.1, 0.1);
    check(!fast.ready(1, 0.1), "non-1-Hz edges must fail");
    LockMonitor lock;
    lock.observe(true, 0); lock.observe(true, 4);
    check(lock.ready(3, 4), "stable reference lock should pass");
    lock.observe(false, 4.1); lock.observe(true, 5);
    check(!lock.ready(3, 5), "lock loss must reset hold interval");
    std::cout << "PASS: normal PPS, frozen PPS, late recovery, skipped/backward edges, wrong period and lock loss\n";
}
