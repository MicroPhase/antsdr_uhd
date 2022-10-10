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
VIVADO_SETTINGS ?= /opt/Xilinx/Vivado/$(VIVADO_VERSION)/settings64.sh
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

all : build build/u-boot.elf build/uboot-env.txt build/uImage build/device_tree.dtb 

#生成的所有可用文件均存在build文件夹
build:
	mkdir -p $@

%: build/%
	cp $< $@

.PHONY: build

## uboot编译
u-boot-xlnx/u-boot u-boot-xlnx/tools/mkimage:
	make -C u-boot-xlnx ARCH=arm zynq_$(TARGET)_defconfig
	make -C u-boot-xlnx  -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) UBOOTVERSION="$(UBOOT_VERSION)"

.PHONY: u-boot-xlnx/u-boot

build/u-boot.elf: u-boot-xlnx/u-boot | build
	cp $< $@

# ## uboot 默认环境
build/uboot-env.txt: u-boot-xlnx/u-boot | build
	CROSS_COMPILE=$(CROSS_COMPILE) scripts/get_default_envs.sh > $@


## linux 镜像设备树生成
linux/arch/arm/boot/uImage: 
	make -C linux ARCH=arm zynq_${TARGET}_defconfig
	make -C linux -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) uImage UIMAGE_LOADADDR=0x8000

build/uImage: linux/arch/arm/boot/uImage | build
	cp $< $@

.PHONY: linux/arch/arm/boot/uImage

## device tree
linux/arch/arm/boot/dts/zynq-${TARGET}.dtb: 
	make -C linux -j $(NCORES) ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) zynq-${TARGET}.dtb

build/device_tree.dtb: linux/arch/arm/boot/dts/zynq-${TARGET}.dtb | build
	cp $< $@


clean-build:
	rm -rf build

clean: clean-build
	make -C linux ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) clean
	make -C linux ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) distclean
	make -C u-boot-xlnx ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) clean
	make -C u-boot-xlnx ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) distclean

