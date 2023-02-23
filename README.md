# ANTSDR UHD 
This repo contains both the uhd host driver and firmware for microphase antsdr devices.

## Directories

### firmware/
The source code is the firmware that runs on the e200 device and communicates between the fpga and the UHD.
The directory contains fpga source code, firmware uboot and linux kernel source code. The root file system is made by petalinux. And you must use this file system to support the firmware to work. 

### host/
The source code is the UHD driver developed by Ettus, and we have added the driver interface of E200 based on its source code.

## Quick start guide
### ANTSDR-E310v2/ANTSDR-E200 for linux user
- Step 1
  
    Download the pre-built image from the [release](https://github.com/MicroPhase/antsdr_uhd/releases/tag/v1.0).

- Step 2
  
    Burn the pre-built image into a SD card.
    Format sd card as fat32 partition,and copy all files in the build_sdimg directory to the sd card partition.
  
- Step 3
  
    Insert the SD card into the ANTSDR-E200/E310v2's SD card slot, and power on the device.
    The Led will flash when the system is running.
    By default the ANTSDR has a static IP address 192.168.1.10, you can ping this address to check the network status.

- Step 4 
  
    Follow This [link](./host/README.md) to build and install the host uhd driver for ANTSDR-E200/E310V2.

### ANTSDR-E310v2/ANTSDR-E200 for windows user

- Step 1
  
    Download the pre-built image from the [release](https://github.com/MicroPhase/antsdr_uhd/releases/tag/v0.1).

- Step 2
  
    Burn the pre-built image into a SD card.
    You can use win32disk manger or other tools to burn the sd card.
- Step 3
  
    Insert the SD card into the ANTSDR-E200/E310v2's SD card slot, and power on the device.
    The Led will flash when the system is running.
    By default the ANTSDR has a static IP address 192.168.1.10, you can ping this address to check the nnetwork status.

- Step 4 
  
    Download the windows uhd driver **uhd_3.15.0.0-0-0e6d9cd3_Win64.exe** from the [release](https://github.com/MicroPhase/antsdr_uhd/releases/tag/v0.1).
    Install the .exe on your computer.


## NOTE
The ethernet of ANTSDR-E200 or ANTSDR-E310V2 can only works at 1000M speed, make sure the connection speed of your computer to the device is 1000M.

  