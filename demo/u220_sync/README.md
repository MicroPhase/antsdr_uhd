# U220 GPS, PPS, and 10 MHz Tests

These examples support U220 200T and 100T devices using the AntSDR UHD 4.9
driver and matching FPGA images from this repository. Three programs test
GPS, PPS, and external 10 MHz reference lock.

## Build

Install the UHD driver from this repository first. On Ubuntu, install the
build tools as well:

```sh
sudo apt install build-essential cmake pkg-config
```

From the repository root, run:

```sh
cd demo/u220_sync
mkdir -p build
cd build
cmake ..
make -j4
```

This builds `u220_test_gps`, `u220_test_pps`, and `u220_test_10m`.
Run all commands below from this `build` directory as a regular user.

If CMake cannot find UHD, check `pkg-config --modversion uhd`.
For a default installation under `/usr/local`, try configuring again with:

```sh
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig cmake ..
make -j4
```

## Find the Device

Connect the USB cable and close GQRX, probe utilities, or other applications
using the device. Then run:

```sh
uhd_find_devices --args="type=b200"
```

The tests automatically select the device when exactly one U220 is connected.
If multiple devices are connected, add `--args="type=b200,serial=YOUR_SERIAL"`,
replacing `YOUR_SERIAL` with the serial number reported above.
The programs identify U220/U220V2 devices by their EEPROM identity and are
intended for the U220 reference routing, rather than standard Ettus B210 boards.

By default, UHD uses the FPGA image installed on the system. Use the matching
BIN for your 100T or 200T FPGA. To select a newly built 100T image without
replacing the system image, run:

```sh
./u220_test_gps --args="type=b200,fpga=../../../firmware/fpga/u220-100t/artifacts/antsdr_u220_100t.bin" --timeout 300 --hold 5
```

## GPS

Connect the GPS antenna and place it where it has a clear view of the sky.
Then run:

```sh
./u220_test_gps --timeout 300 --hold 5
```

The program reads the GPS fix status and UTC, then checks GPS PPS and the
reference loop. It reports `PASS` when GPS has a valid fix, UTC advances,
at least five consecutive PPS intervals are approximately one second, and
GPS fix and reference lock remain asserted in software samples for at least
five seconds. A GPS cold start can take several minutes. If the test times
out, allow more time for a fix and try again.

## External PPS

Connect an external 1 PPS signal to the board's PPS input, then run:

```sh
./u220_test_pps --time-source external --timeout 180 --hold 5
```

`PASS` means the program observed at least five consecutive PPS intervals
of approximately one second and met the five-second reference lock criterion.
Use `--time-source gpsdo` to check GPS PPS instead.
To check only the internal PPS counter without an external signal, run:

```sh
./u220_test_pps --time-source internal --timeout 15
```

Passing the internal check does not establish external PPS or GPS lock.

## External 10 MHz

Connect a known-good 10 MHz signal to the board's reference input, then run:

```sh
./u220_test_10m --timeout 180 --hold 5
```

`PASS` means the FPGA's `ref_locked` status remained asserted in software
samples for at least five seconds. This checks lock status, not frequency
accuracy. Signal levels, grounding, and wiring must meet the board's input
requirements.

## Read the Results

- `PASS`: the test criteria were met; exit code 0.
- `FAIL`: the criteria were not met before the timeout; exit code 1. Check
  the connections, antenna reception, and time allowed for locking.
- `ERROR`: a device, driver, sensor, or argument error occurred; exit code 2.
- Ctrl+C: stop the test; exit code 130.

The programs do not stream RF samples, write EEPROM, or set the FPGA's
absolute time to GPS UTC. They switch reference sources during testing and
attempt to restore the original settings on exit. PPS intervals use a
±5 ms tolerance; passing does not establish sub-microsecond synchronization
accuracy. A GPS test result does not replace an external 10 MHz test.

Use commands such as `./u220_test_gps --help` to see the available options.
Run `ctest --output-on-failure` for measurement-logic and command-help checks
that do not require a connected device.
