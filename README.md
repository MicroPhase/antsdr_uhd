# antsdr_uhd
This repo contains  both the uhd host driver and firmware for microphase antsdr devices.

## Directories

### firmware/
The source code is the firmware that runs on the e200 device and communicates between the fpga and the UHD.
The directory contains fpga source code, firmware uboot and linux kernel source code. The root file system is made by petalinux. And you must use this file system to support the firmware to work. 

### host/
The source code is the UHD driver developed by Ettus, and we have added the driver interface of E200 based on its source code.