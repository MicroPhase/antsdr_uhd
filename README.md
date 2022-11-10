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
  
    Download the pre-built image from the [release](https://github.com/MicroPhase/antsdr_uhd/releases/tag/v0.1).

- Step 2
  
    Burn the pre-built image into a SD card.
    Insert your SD card into you computer, using dmesg to get the sd card mount point.
  
    ```bash
    mp@mp-dev:~$ dmesg
    ....
    [37670.989975] usb 1-1: new high-speed USB device number 10 using xhci_hcd
    [37671.139058] usb 1-1: New USB device found, idVendor=14cd, idProduct=1212, bcdDevice= 1.00
    [37671.139072] usb 1-1: New USB device strings: Mfr=1, Product=3, SerialNumber=2
    [37671.139080] usb 1-1: Product: Mass Storage Device
    [37671.139085] usb 1-1: Manufacturer: Generic
    [37671.139090] usb 1-1: SerialNumber: 121220160204
    [37671.141361] usb-storage 1-1:1.0: USB Mass Storage device detected
    [37671.141873] scsi host6: usb-storage 1-1:1.0
    [37672.154569] scsi 6:0:0:0: Direct-Access     Mass     Storage Device   1.00 PQ: 0 ANSI: 0 CCS
    [37672.154976] sd 6:0:0:0: Attached scsi generic sg1 type 0
    [37672.349510] sd 6:0:0:0: [sdb] 15499264 512-byte logical blocks: (7.94 GB/7.39 GiB)
    [37672.349667] sd 6:0:0:0: [sdb] Write Protect is off
    [37672.349669] sd 6:0:0:0: [sdb] Mode Sense: 03 00 00 00
    [37672.349784] sd 6:0:0:0: [sdb] No Caching mode page found
    [37672.349787] sd 6:0:0:0: [sdb] Assuming drive cache: write through
    [37672.352052]  sdb: sdb1 sdb2
    [37672.352912] sd 6:0:0:0: [sdb] Attached SCSI removable disk
    [37672.998628] EXT4-fs (sdb2): recovery complete
    [37673.002491] EXT4-fs (sdb2): mounted filesystem with ordered data mode. Opts: (null). Quota mode: none.
    [37673.013769] FAT-fs (sdb1): Volume was not properly unmounted. Some data may be corrupt. Please run fsck.
    ```
    As you can see, the sdcard mount point is /dev/sdb. Then you can burn the sd card with dd command.
    Actually, you can delete all the partition of your sd card first.
    ```bash
    dd if=/path/to/your/download/image of=/path/to/your/sd/mount point bs=2M
    ```
    for example:
    ```bash
    dd if=~/e200.img of=/dev/sdb bs=2M
    sync
    ```
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

  