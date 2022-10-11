# antsdr_uhd
This repo contains  both the uhd host driver and firmware for microphase antsdr devices.


## Build Instructions
The E200 firmware is required to run UHD driver.  You must run the host program on the E200 to use the UHD driver to driver the E200.

### Build E200 firmware
The driver is compiled and run on e200 device.

#### Install build requirements
```sh
sudo apt-get install git build-essential fakeroot libncurses5-dev libssl-dev ccache 
sudo apt-get install dfu-util u-boot-tools device-tree-compiler mtools
sudo apt-get install bc python cpio zip unzip rsync file wget 
sudo apt-get install libtinfo5 device-tree-compiler bison flex u-boot-tools
sudo apt-get purge gcc-arm-linux-gnueabihf
sudo apt-get remove libfdt-de
```

#### Get source code and setup bash
```sh
git clone git@github.com:MicroPhase/antsdr_uhd.git
export CROSS_COMPILE=arm-linux-gnueabihf- 
export PATH=$PATH:/tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin 
export VIVADO_SETTINGS=/tools/Xilinx/Vivado/2019.1/settings64.sh
```

#### Build E200 firmware
```sh
cd antsdr_uhd/firmware
make
```

#### Build Artifacts
After the firmware building finished,you wii see below file in the build folder. 
```txt
jcc@jcc:~/work/Git-project/antsdr_uhd/firmware$ ls -AGhl build
总用量 18M
drwxrwxr-x 2 jcc 4.0K 10月 11 09:41 antsdr_e200
-rw-r--r-- 1 jcc 2.5M 10月 11 09:42 antsdr_e200.bit
-rw-rw-r-- 1 jcc 1.3M 10月 11 09:41 antsdr_e200.hdf
-rw-rw-r-- 1 jcc   58 10月 11 09:42 boot.bif
-rw-rw-r-- 1 jcc 503K 10月 11 09:42 BOOT.bin
-rw-rw-r-- 1 jcc  11K 10月 11 09:30 device_tree.dtb
-rwxrwxr-x 1 jcc 530K 10月 11 09:42 fsbl.elf
-rw-rw-r-- 1 jcc 511K 10月 11 09:42 ps7_init.c
-rw-rw-r-- 1 jcc 510K 10月 11 09:42 ps7_init_gpl.c
-rw-rw-r-- 1 jcc 4.2K 10月 11 09:42 ps7_init_gpl.h
-rw-rw-r-- 1 jcc 4.8K 10月 11 09:42 ps7_init.h
-rw-rw-r-- 1 jcc 2.7M 10月 11 09:42 ps7_init.html
-rw-rw-r-- 1 jcc  34K 10月 11 09:42 ps7_init.tcl
drwxrwxr-x 6 jcc 4.0K 10月 11 09:42 sdk
-rwxrwxr-x 1 jcc 3.4M 10月 11 09:25 u-boot.elf
-rw-rw-r-- 1 jcc 2.0K 10月 11 09:25 uboot-env.txt
-rw-rw-r-- 1 jcc 5.9M 10月 11 09:30 uImage
```

### Make SD card boot image
After the firmware building finished, you must build the SD card boot image for e200. Just type the following command.
```sh
make sdimg
```
You will see the SD boot image in the build_sdimg folder. You can just copy all these filed in that folder into a SD fat partition, And then extract the root file system we provided to the sd card ext4 partition.