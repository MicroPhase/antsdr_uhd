#!/bin/sh -e

if [ -z "$NUM_JOBS" ] ; then
	NUM_JOBS=$(getconf _NPROCESSORS_ONLN)
	NUM_JOBS=${NUM_JOBS:-1}
fi

COMMON_DEPS="make bc u-boot-tools flex bison libssl-dev"

install_deps() {
	sudo apt-get -qq update

	if [ "$ARCH" = "arm64" ] ; then
		GCC_PKG="gcc-aarch64-linux-gnu"
		export CROSS_COMPILE=aarch64-linux-gnu-
		export ARCH=arm
	fi

	if [ "$ARCH" = "arm" ] ; then
		GCC_PKG="gcc-arm-linux-gnueabihf"
		export CROSS_COMPILE=arm-linux-gnueabihf-
	fi

	sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
		$GCC_PKG $COMMON_DEPS

}

build_default() {
	install_deps

	make $CI_DEFCONFIG
	make V=s -j${NUM_JOBS}
}

BUILD_TYPE="${BUILD_TYPE:-default}"

build_${BUILD_TYPE}
