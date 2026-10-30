Host UHD™ Software Source Code
============================================

This directory tree contains the source code that builds the UHD software
library on your host computer. This library contains the drivers for all Ettus
Research products, and the framework and API that make them usable to
application-level programs. The UHD library runs entirely in user-space.

## Documentation

For documentation, please refer to the following resources:

For technical documentation related to our devices and UHD check out the
[UHD and USRP Manual](http://files.ettus.com/manual/).

Additionally, be sure to check out the Ettus Research
[FAQ](https://kb.ettus.com/Technical_FAQ), and the
[Knowledge Base](http://kb.ettus.com) for useful application notes and
tutorials.

## Support

If you have purchased an Ettus Research USRP™ product and need technical support
using the device or using this UHD™ software, please e-mail the `USRP-Users`
mailing list, which is where Ettus Research, and our community, provide support
to users.

Note that you must be *subscribed* to the list in order to post a message to the
list. This is to prevent spammers from just sending garbage messages out over
the listserve.

* [Ettus Research USRP-Users Mailing List](https://lists.ettus.com/list/usrp-users.lists.ettus.com)

## AntSDR support on the `uhd_4.9` branch

This branch keeps the Ettus UHD 4.9 host tree as the baseline and adds the
AntSDR backend behind the `ENABLE_ANT` CMake option. The ANT backend supports
the existing AntSDR Ethernet discovery/control path for E200 and E316.
The B200 backend follows the Ettus B-series profiles for the AntSDR USB
boards: U220 and U220V2 use the B210 profile, while U200 uses the B205mini
profile. This keeps the RX gain, ATR, FE swap, antenna mapping, and related
AD9361 control behavior aligned with the corresponding B-series device. These
boards still require hardware validation with the target FPGA image.

### Recommended build for AntSDR and USRP B-series

Run the following commands from the `host` directory. Use a new build directory
instead of reusing an old CMake cache. The explicit component switches keep this
host build limited to:

- AntSDR E200 and E316 through the `ANT` Ethernet backend;
- AntSDR U220/U220V2/U200 through the shared `B200`/AD9361 USB backend;
- Ettus USRP B100/B200-series devices through the `B100` and `B200` backends.

```sh
cd host
mkdir build
cd build

cmake ../ \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_LIBUHD=ON \
    -DENABLE_UTILS=ON \
    -DENABLE_EXAMPLES=ON \
    -DENABLE_ANT=ON \
    -DENABLE_USB=ON \
    -DENABLE_B100=ON \
    -DENABLE_B200=ON \
    -DENABLE_USRP1=OFF \
    -DENABLE_USRP2=OFF \
    -DENABLE_X300=OFF \
    -DENABLE_MPMD=OFF \
    -DENABLE_SIM=OFF \
    -DENABLE_N300=OFF \
    -DENABLE_N320=OFF \
    -DENABLE_E300=OFF \
    -DENABLE_E320=OFF \
    -DENABLE_X400=OFF \
    -DENABLE_OCTOCLOCK=OFF \
    -DENABLE_DPDK=OFF

make -j$(nproc)
```

`ENABLE_SIM=OFF` is required for this repository layout unless the matching
UHD MPM Python source tree is also checked out at `../mpm/python`. Without this
switch, a default `cmake ../` may fail with an error such as:

```text
add_subdirectory given source ".../mpm/python" which is not an existing directory
```

The Python API remains enabled by default. If only the command-line utilities
are needed and Python bindings are not required, add:

```sh
-DENABLE_PYTHON_API=OFF -DENABLE_PYMOD_UTILS=OFF
```

For a system installation after a successful build:

```sh
sudo make install
```

For USB access as a normal user, install the UHD udev rules once and reload
them:

```sh
sudo install -m 0644 ../utils/uhd-usrp.rules /etc/udev/rules.d/uhd-usrp.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
```

`ENABLE_USB=OFF` is appropriate only for an ANT-only build. It must remain
`ON` when the same UHD build is expected to operate U220/U220V2/U200 or Ettus
USRP B-series USB devices.

After connecting an AntSDR board, discovery can be checked with:

```sh
./utils/uhd_find_devices --args="type=ant"
./utils/uhd_usrp_probe --args="type=ant,addr=<device-ip>"
```

The build and unit tests do not replace board-level validation. RX/TX smoke
tests and probing must be run separately for each available AntSDR model.
