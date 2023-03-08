# ANTSDR UHD 
This repo contains both the uhd host driver and firmware for microphase antsdr devices.

The related host driver, FPGA rtl code, and Linux kernel in this GitHub repository are sourced from [Ettus Research](https://github.com/EttusResearch). MicroPhase has modified the code to adapt it to AntSDR devices.

## How can I obtain an AntSDR device?

Chinese users can get AntSDR devices on [Taobao](https://detail.tmall.com/item.htm?id=691247858909&spm=a1z10.1-b-s.w4004-24631307567.16.6da2364eKszAoW&skuId=4909539824797).

Overseas users can obtain it on [CrowdSupply](https://www.crowdsupply.com/microphase-technology/antsdr-e200), and this is currently the only official channel.


## Directories

### firmware/
The source code is the firmware that runs on the e200 device and communicates between the fpga and the UHD.
The directory contains fpga source code, firmware uboot and linux kernel source code and buildroot filesystem.

### host/
The source code is the UHD driver developed by [Ettus](https://github.com/EttusResearch), and we have added the driver interface of E200 based on its source code.

## Quick start guide
### ANTSDR-E310v2/ANTSDR-E200 for linux user
- Step 1

  Download the latest firmware v1.0/build_sdimg.zip file from our [github release](https://github.com/MicroPhase/antsdr_uhd/releases/tag/v1.0).

- Step 2

  Unzip this zip file, and copy all this files(bitstream, devicetree, linux kernel, boot.bin and so on) into a fat32 SD card, and insert this SD card into the slot.

- Step 3

  Follow this [link](https://github.com/MicroPhase/antsdr_uhd/blob/master/host/README.md) to build the host driver.

- Step 4

  Power on the device, The led will flash when the system is running. By default the AntSDR has a static IP address 192.168.1.10, you can ping this address to check the network status if your computer and device are in the same network segment. Or you can use uhd_find_devices to find the device.

- Step 5

  Then you can use gnuradio or other software and build your own application.

## NOTE
The ethernet of ANTSDR-E200 or ANTSDR-E310V2 can only works at 1000M speed, make sure the connection speed of your computer to the device is 1000M.

## Related Links(documentation or supported projects)
- [Online Doc](https://antsdr-doc-en.readthedocs.io/en/latest/index.html): Online documentation about ANTSDR E200
- [IIO firmware](https://github.com/MicroPhase/antsdr-fw-patch)：Source repository compatible with plutosdr firmware
- [DragonOS](https://cemaxecuter.com/)：Out of the box OS for SDRs
- [openwifi](https://github.com/open-sdr/openwifi): Linux mac80211 compatible full-stack IEEE802.11/Wi-Fi design based on SDR 
- [srsRAN_4G](https://github.com/srsran/srsRAN_4G): srsRAN is an open source 4G software radio suite developed by SRS.

