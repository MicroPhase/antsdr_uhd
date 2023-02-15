VIVADO_VERSION ?= 2019.1
CROSS_COMPILE ?= arm-linux-gnueabihf-

HAVE_CROSS=$(shell which $(CROSS_COMPILE)gcc | wc -l)
ifeq (0, ${HAVE_CROSS})
$(warning *** can not find $(CROSS_COMPILE)gcc in PATH)
$(error please update PATH)
endif

#gives us path/bin/arm-linux-gnueabihf-gcc
TOOLCHAIN = $(shell which $(CROSS_COMPILE)gcc)
#gives us path/bin
TOOLCHAIN2 = $(shell dirname $(TOOLCHAIN))
#gives us path we need
TOOLCHAIN_PATH = $(shell dirname $(TOOLCHAIN2))


NCORES = $(shell grep -c ^processor /proc/cpuinfo)
VIVADO_SETTINGS ?= /tools/Xilinx/Vivado/$(VIVADO_VERSION)/settings64.sh
VSUBDIRS = hdl buildroot linux u-boot-xlnx

VERSION=$(shell git describe --abbrev=4 --dirty --always --tags)
LATEST_TAG=$(shell git describe --abbrev=0 --tags)
UBOOT_VERSION=$(shell echo -n "e200 " && cd u-boot-xlnx && git describe --abbrev=0 --dirty --always --tags)
HAVE_VIVADO= $(shell bash -c "source $(VIVADO_SETTINGS) > /dev/null 2>&1 && vivado -version > /dev/null 2>&1 && echo 1 || echo 0")

ifeq (1, ${HAVE_VIVADO})
	VIVADO_INSTALL= $(shell bash -c "source $(VIVADO_SETTINGS) > /dev/null 2>&1 && vivado -version | head -1 | awk '{print $2}'")
	ifeq (, $(findstring $(VIVADO_VERSION), $(VIVADO_INSTALL)))
$(warning *** This repository has only been tested with $(VIVADO_VERSION),)
$(warning *** and you have $(VIVADO_INSTALL))
$(warning *** Please 1] set the path to Vivado $(VIVADO_VERSION) OR)
$(warning ***        2] remove $(VIVADO_INSTALL) from the path OR)
$(error "      3] export VIVADO_VERSION=v20xx.x")
	endif
endif

TARGET ?= e200
SUPPORTED_TARGETS:=e200 e310v2


ifeq ($(findstring $(TARGET),$(SUPPORTED_TARGETS)),)
all:
	@echo "Invalid `TARGET variable ; valid values are: e310 e310v2" &&
	exit 1
else
all: clean-build $(TARGETS) 
endif


all : build	build/uboot-env.txt	build/uImage build/device_tree.dtb build/system_top.bit build/BOOT.bin \
	  build/rootfs.cpio.gz

#all the build file temp
build:
	mkdir -p $@
	rm -rf build/BOOT.bin

%: build/%
	cp $< $@

.PHONY: build

## uboot make
u-boot-xlnx/u-boot u-boot-xlnx/tools/mkimage:
	make -C u-boot-xlnx ARCH=arm zynq_$(TARGET)_defconfig
	make -C u-boot-xlnx  -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) UBOOTVERSION="$(UBOOT_VERSION)"

.PHONY: u-boot-xlnx/u-boot

build/u-boot.elf: u-boot-xlnx/u-boot | build
	cp $< $@

## uboot uenv.txt
build/uboot-env.txt: build/u-boot.elf | build
	CROSS_COMPILE=$(CROSS_COMPILE) scripts/get_default_envs.sh > $@

## linux uImage
linux/arch/arm/boot/uImage: 
	make -C linux ARCH=arm zynq_$(TARGET)_defconfig
	make -C linux -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) uImage UIMAGE_LOADADDR=0x8000


.PHONY: linux/arch/arm/boot/uImage

build/uImage: linux/arch/arm/boot/uImage | build
	cp $< $@

## device tree
linux/arch/arm/boot/dts/zynq-$(TARGET).dtb: 
	make -C linux -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) zynq-${TARGET}.dtb

build/device_tree.dtb: linux/arch/arm/boot/dts/zynq-$(TARGET).dtb | build
	cp $< $@

## rootfs
buildroot/output/images/rootfs.cpio.gz:
	make -C buildroot ARCH=arm zynq_$(TARGET)_defconfig
	make -C buildroot TOOLCHAIN_EXTERNAL_INSTALL_DIR=$(TOOLCHAIN_PATH) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) all

.PHONY: buildroot/output/images/rootfs.cpio.gz

build/rootfs.cpio.gz : buildroot/output/images/rootfs.cpio.gz | build
	cp $< $@

build/$(TARGET).itb: u-boot-xlnx/tools/mkimage build/zImage build/rootfs.cpio.gz $(TARGET_DTS_FILES) build/system_top.bit
	u-boot-xlnx/tools/mkimage -f scripts/$(TARGET).its $@


## hdf
build/system_top.hdf: | build
	bash -c "source $(VIVADO_SETTINGS) && make -C fpga/antsdr_$(TARGET) -j $(NCORES) && cp fpga/antsdr_$(TARGET)/antsdr_$(TARGET)/antsdr_$(TARGET).sdk/system_top.hdf $@"

## bit
build/system_top.bit : build/system_top.hdf
	unzip -o build/system_top.hdf -d build/antsdr_$(TARGET)
	cp build/antsdr_$(TARGET)/antsdr_$(TARGET).bit build/


## fsbl
build/fsbl.elf :
	bash -c "source $(VIVADO_SETTINGS) && xsdk -batch -source scripts/create_fsbl_project.tcl"
	cp build/sdk/fsbl/Release/fsbl.elf build/fsbl.elf

## bif
build/boot.bif : build/u-boot.elf build/fsbl.elf
	touch $@
	echo "image : {[bootloader] build/fsbl.elf    build/u-boot.elf}" >  $@

## BIN 
build/BOOT.bin : build/boot.bif
	bash -c "source $(VIVADO_SETTINGS) && bootgen -image build/boot.bif -o i build/BOOT.bin"


SDIMGDIR=$(CURDIR)/build_sdimg
sdimg: build/
	mkdir $(SDIMGDIR)
	cp build/BOOT.bin $(SDIMGDIR)/
	cp build/antsdr_$(TARGET).bit $(SDIMGDIR)/antsdr.bit
	cp build/uImage $(SDIMGDIR)/
	cp build/uboot-env.txt $(SDIMGDIR)/uEnv.txt
	cp build/device_tree.dtb $(SDIMGDIR)/devicetree.dtb
	cp build/rootfs.cpio.gz $(SDIMGDIR)/ramdisk.image.gz
	mkimage -A arm -T ramdisk -C gzip -d $(SDIMGDIR)/ramdisk.image.gz $(SDIMGDIR)/uramdisk.image.gz
	rm $(SDIMGDIR)/ramdisk.image.gz

clean-build:
	rm -rf build
	rm -rf build_sdimg
	make -C fpga/antsdr_$(TARGET) clean


clean: clean-build
	make -C linux ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) distclean
	make -C u-boot-xlnx ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) distclean
	make -C fpga/antsdr_$(TARGET) clean
	rm -rf build_sdimg

