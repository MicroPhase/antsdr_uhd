# Overview

This folder includes the rtl code related to [uhd-fpga](https://github.com/EttusResearch/uhd/tree/master/fpga), We did some work on this to make it support our ANTSDR devices.

Thanks a lot to [Ettus Research](https://www.ettus.com/) for being able to open source these codes, it helps us a lot.



#  Folder struct

- lib 
  - contains the common blocks for all ANTSDR devices.
- antsdr_e200
  - the rtl code and ip related to ANTSDR-E200 devices.
- antsdr_e310v2
  - the rtl code and ip related to ANTSDR-E310V2 devices.
- antsdr_u222_100t/200t
  - the rtl code and ip related to antsdr_u220 devices.



# How to build the fpga project

The easiest way is to use a Linux system, enter the subdirectory of the corresponding device, and then execute the `make` command. Here is the example for antsdr_u220_100t

```bash
# set the vivado environment. Assuming that you have installed Vivado and the current version is 2019.1.
source /opt/Xilinx/Vivado/2019.1/settings64.sh 
cd /path/to/antsdr_u220_100t
make
```

After the process is finished, you will get a synthesized bit or bin file.
