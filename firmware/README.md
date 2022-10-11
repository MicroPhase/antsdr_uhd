# Build e200 firmware
This document is used to describe how to compile the firmware of the e200.

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

### SD card Artifacts
- BOOT(fat32) partition
```txt
jcc@jcc:/media/jcc/BOOT$ ls -l
总用量 8948
-rw-r--r-- 1 jcc jcc 2516829 10月 11 10:32 antsdr_e200.bit
-rw-r--r-- 1 jcc jcc  514484 10月 11 10:32 BOOT.bin
-rw-r--r-- 1 jcc jcc   10791 10月 11 10:32 devicetree.dtb
-rw-r--r-- 1 jcc jcc    1975 10月 11 10:32 uEnv.txt
-rw-r--r-- 1 jcc jcc 6113952 10月 11 10:32 uImage
```

- ROOTFS(ext3/4) partition
```txt
jcc@jcc:/media/jcc/rootfs$ ls -l
总用量 56
drwxr-xr-x  2 jcc  jcc  4096 9月  24 10:39 bin
drwxr-xr-x  2 jcc  jcc  4096 9月  22 16:46 boot
drwxr-xr-x  2 jcc  jcc  4096 9月  22 16:46 dev
drwxr-xr-x 23 jcc  jcc  4096 9月  24 16:48 etc
drwxr-xr-x  3 jcc  jcc  4096 9月  24 10:39 home
drwxr-xr-x  5 jcc  jcc  4096 9月  24 10:39 lib
drwxr-xr-x  2 jcc  jcc  4096 9月  22 16:46 media
drwxr-xr-x  2 jcc  jcc  4096 9月  24 16:21 mnt
dr-xr-xr-x  2 jcc  jcc  4096 9月  22 16:46 proc
drwxr-xr-x  2 jcc  jcc  4096 1月   1  1970 run
drwxr-xr-x  2 jcc  jcc  4096 9月  24 10:39 sbin
dr-xr-xr-x  2 jcc  jcc  4096 9月  22 16:46 sys
lrwxrwxrwx  1 root root    8 9月  24 16:48 tmp -> /var/tmp
drwxr-xr-x 10 jcc  jcc  4096 5月  23  2019 usr
drwxr-xr-x  8 jcc  jcc  4096 5月  23  2019 var
```

Then plug the SD card into the ANTSDR, set the jumper into SD card boot mode.

## Boot information for e200 firmware
When e200 is powered on, you can see the following message in serial port terminal.
```txt
U-Boot e200  (Oct 11 2022 - 10:17:58 +0800)

I2C:   ready
DRAM:  ECC disabled 512 MiB
MMC:   sdhci@e0100000: 0
SF: Detected W25Q256 with page size 256 Bytes, erase size 4 KiB, total 32 MiB
*** Warning - bad CRC, using default environment

In:    serial@e0000000
Out:   serial@e0000000
Err:   serial@e0000000
Model: ANT SDR E200
Button pressed: Using default environment
reading uEnv.txt
1975 bytes read in 15 ms (127.9 KiB/s)
Importing environment from SD ...
Hit any key to stop autoboot:  0 
Device: sdhci@e0100000
Manufacturer ID: 89
OEM: 303
Name: NCard 
Tran Speed: 50000000
Rd Block Len: 512
SD version 3.0
High Capacity: Yes
Capacity: 29.1 GiB
Bus Width: 4-bit
Erase Group Size: 512 Bytes
Copying Linux from SD to RAM...
reading antsdr_e200.bit
2516829 bytes read in 134 ms (17.9 MiB/s)
  design filename = "antsdr_e200;COMPRESS=TRUE;UserID=0XFFFFFFFF;Version=2019.1"
  part number = "7z020clg400"
  date = "2022/10/11"
  time = "10:31:55"
  bytes in bitstream = 2516708
zynq_align_dma_buffer: Align buffer at 100079 to 100000(swap 1)
reading uImage
6113952 bytes read in 305 ms (19.1 MiB/s)
reading devicetree.dtb
10791 bytes read in 19 ms (553.7 KiB/s)
## Booting kernel from Legacy Image at 02080000 ...
   Image Name:   Linux-5.2.28-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    6113888 Bytes = 5.8 MiB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 02000000
   Booting using the fdt blob at 0x2000000
   Loading Kernel Image ... OK
   Loading Device Tree to 1eb1c000, end 1eb21a26 ... OK

Starting kernel ...
......
......
......
PetaLinux 2019.1 e200 /dev/ttyPS0

e200 login: 

```
Then you can input username :root password : root
```txt
root@e200:~# 
```

The e200 has an ethernet port. The default IP address for ethernet port is **192.168.1.10**
```txt
root@e200:~# ifconfig 
eth0      Link encap:Ethernet  HWaddr F6:17:D8:E2:0A:DA  
          inet addr:192.168.1.10  Bcast:0.0.0.0  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:4 errors:0 dropped:2 overruns:0 frame:0
          TX packets:22 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:772 (772.0 B)  TX bytes:6784 (6.6 KiB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
```