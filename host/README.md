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
the existing AntSDR Ethernet discovery/control path for E200 and
E310V2-compatible boards (including the E316 product line where the firmware
reports the E310V2 identity). The B200 backend also contains the shared
AD9361 compatibility path used by U220/U220V2/U200; these boards still require
hardware validation on the target setup.

A host-only build with AntSDR enabled can be configured as follows:

```sh
cmake -S host -B build-uhd49 \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_LIBUHD=ON \
    -DENABLE_USB=OFF \
    -DENABLE_ANT=ON \
    -DENABLE_UTILS=ON
cmake --build build-uhd49 -j$(nproc)
```

`ENABLE_USB=OFF` is sufficient for ANT-only builds because AntSDR uses
Ethernet/UDP. Keep `ENABLE_USB=ON` when building the shared B200 path for
U220/U220V2/U200 together with Ettus USB devices.

After connecting an AntSDR board, discovery can be checked with:

```sh
build-uhd49/utils/uhd_find_devices --args="type=ant"
build-uhd49/utils/uhd_usrp_probe --args="type=ant,addr=<device-ip>"
```

The build and unit tests do not replace board-level validation. RX/TX smoke
tests and probing must be run separately for each available AntSDR model.
