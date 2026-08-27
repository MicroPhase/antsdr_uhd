Host UHD™ Software Source Code
============================================

This document will describe how to compile UHD from source code.

## Build on Ubuntu
### Build Dependencies
You can install all the dependencies through the package manager:
#### For Ubuntu 22.04 (Jammy) and Older
```sh
sudo apt-get install autoconf automake build-essential ccache cmake cpufrequtils doxygen ethtool \
g++ git inetutils-tools libboost-all-dev libncurses5 libncurses5-dev libusb-1.0-0 libusb-1.0-0-dev \
libusb-dev python3-dev python3-mako python3-numpy python3-requests python3-scipy python3-setuptools \
python3-ruamel.yaml
```
#### For Ubuntu 24.04 (Noble Numbat) and Newer
Starting with Ubuntu 24.04, `libncurses5` and  `libncurses5-dev` is no longer available in the default repositories and has been replaced by `libncurses6` and `libncurses-dev`.

```sh
sudo apt-get install autoconf automake build-essential ccache cmake cpufrequtils doxygen ethtool \
g++ git inetutils-tools libboost-all-dev libncurses6 libncurses-dev libusb-1.0-0 libusb-1.0-0-dev \
libusb-dev python3-dev python3-mako python3-numpy python3-requests python3-scipy python3-setuptools \
```
### Build Instructions
- **Generate Makefile with CMake**
```sh
cd host/
cmake -S . -B build-antsdr \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=/opt/antsdr-uhd \
  -DENABLE_ANT=ON -DENABLE_USB=ON \
  -DENABLE_X400=OFF -DENABLE_N320=OFF -DENABLE_X300=OFF \
  -DENABLE_USRP2=OFF -DENABLE_USRP1=OFF -DENABLE_N300=OFF \
  -DENABLE_E320=OFF -DENABLE_E300=OFF -DENABLE_B200=OFF \
  -DENABLE_B100=OFF -DENABLE_OCTOCLOCK=OFF \
  -DENABLE_PYTHON_API=ON -DENABLE_TESTS=OFF
```
- **Make**
```sh
cmake --build build-antsdr --parallel
```
- **Install**
```sh
sudo cmake --install build-antsdr
```
The example above installs the ANTSDR-enabled UHD in `/opt/antsdr-uhd`,
without replacing an existing UHD installation. The ANT component in this
source tree currently has a build-time dependency on `ENABLE_USB`, so keep
that option enabled even though E200 data/control traffic uses Ethernet.

Use the matching tools and library together:

```sh
export PATH=/opt/antsdr-uhd/bin:$PATH
export LD_LIBRARY_PATH=/opt/antsdr-uhd/lib:${LD_LIBRARY_PATH:-}
export UHD_IMAGES_DIR=/opt/antsdr-uhd/share/uhd/images
uhd_find_devices --args="addr=192.168.1.10"
uhd_usrp_probe --args="addr=192.168.1.10"
```

When using a direct `addr=` argument, product discovery metadata may not be
present. In that case specify the ANTSDR model explicitly so the driver can
select the matching FPGA flow-control behavior:

```sh
uhd_usrp_probe --args="addr=192.168.1.10,product=E200"
# or: product=E310\  v2 for ANTSDR-E310V2
```

This `product` key refers only to ANTSDR-E200/ANTSDR-E310V2. Ettus USRP E3XX
devices use UHD's separate native E3XX driver.

Do not mix these UHD 4.1 tools/library with applications linked against a
different UHD ABI (for example UHD 4.9). Rebuild the application against the
headers and `libuhd.so` from the same prefix, or invoke it with the environment
above. Only make this installation the system default after it has been
validated with the target application.

### Long-duration test with two E200 devices

To test two E200 devices connected through the same switch, run concurrent
continuous RX streams while logging ping and Ethernet statistics:

```sh
cd host
ANTSDR_SSH_PASSWORD=microphase \
    utils/antsdr_dual_e200_stress.sh \
    --addr-a 192.168.1.10 --addr-b 192.168.1.11 \
    --duration 14400 --rate 7.68e6 --channels 0
```

The test forces tools and `libuhd` from `/opt/antsdr-uhd`. A timestamped
result directory contains the UHD summaries, per-device ping logs, host NIC
counters, and optional board-side `ethtool`/kernel snapshots. The default
single-channel rate produces about 492 Mbit/s of aggregate sc16 RX payload
for two devices, leaving headroom on the host's 1 GbE interface.

### Simultaneous UHD RX/TX test with two E200 devices

To exercise both directions on both boards at the same time, use the full-duplex
wrapper around UHD's `benchmark_rate` example:

```sh
cd host
ANTSDR_SSH_PASSWORD=microphase \
    utils/antsdr_dual_e200_txrx.sh \
    --addr-a 192.168.1.10 --addr-b 192.168.1.12 \
    --duration 300 --rate 1e6
```

The program starts one RX and one TX stream on each E200 concurrently. Each
device is opened with an explicit `addr=...,product=E200` argument, so the test
does not depend on discovery ordering. `SUMMARY.txt` reports received and
transmitted samples, RX drops/overruns/sequence errors, TX underruns and
timeouts. Start at 1 MS/s; two devices produce about 128 Mbit/s of aggregate
sc16 RX+TX payload at that rate. Increase the rate only after checking the
host NIC and switch capacity, and connect TX outputs to a suitable load or
attenuator during hardware testing.

## Test with e200
After connecting the netword port and powering the e200, run the command uhd_usrp_probe. The running example is as follows:

```sh
jcc@jcc:~$ uhd_usrp_probe 
[INFO] [UHD] linux; GNU C++ version 8.4.0; Boost_106501; UHD_3.15.0.dev-0-8b82588b
[INFO] [ANTSDR] Search Microphase ANTSDR E200.
[INFO] [E200] Detected Device: ANTSDR
[INFO] [E200] Initialize CODEC control...
[INFO] [E200] _Product B205MINI(COMPATIBLE)...
[INFO] [E200] Initialize Radio control...
[INFO] [E200] Performing register loopback test... 
[INFO] [E200] Register loopback test passed
[INFO] [E200] Setting master clock rate selection to 'automatic'.
[INFO] [E200] Asking for clock rate 16.000000 MHz... 
[INFO] [E200] Actually got clock rate 16.000000 MHz.
  _____________________________________________________
 /
|       Device: ANT-E-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ANTSDR-EXXX
|   |   No mboard EEPROM found.
|   |   FPGA Version: 7.0
|   |   
|   |   Time sources:  none, internal, external
|   |   Clock sources: internal, external
|   |   Sensors: ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 0
|   |   |   
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: FE-RX1
|   |   |   |   Antennas: TX/RX, RX2
|   |   |   |   Sensors: temp, rssi, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ANTSDR-EXXX RX dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX DSP: 0
|   |   |   
|   |   |   Freq range: -8.000 to 8.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: FE-TX1
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: temp, lo_locked
|   |   |   |   Freq range: 50.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 200000.0 to 56000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ANTSDR-EXXX TX dual DAC
|   |   |   |   Gain Elements: None
```
When you can see the above output, uhd can run on the e200.
