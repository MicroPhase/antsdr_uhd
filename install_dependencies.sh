#!/bin/sh
sudo apt purge gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi -y
sudo apt install git build-essential fakeroot libncurses5-dev libssl-dev ccache -y
sudo apt install dfu-util u-boot-tools device-tree-compiler mtools -y
sudo apt install bc python3 cpio zip unzip rsync file wget -y
sudo apt install libtinfo5 device-tree-compiler bison flex u-boot-tools -y
sudo apt remove libfdt-dev
