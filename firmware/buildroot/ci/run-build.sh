#!/bin/bash
set -e

. ./ci/lib.sh

tolower() {
	echo "$1" | tr A-Z a-z
}

_check_defconfig() {
	local defconfig="$1"

	if [ ! -f "configs/$defconfig" ] ; then
		echo_red "File does not exist 'configs/${defconfig}'"
		return 1
	fi

	make ${defconfig}
	make savedefconfig

	git diff --exit-code || {
		echo_red "Defconfig file should be updated: 'configs/${defconfig}"
		echo_red "Run 'make savedefconfig', overwrite it and commit it"
		git checkout .
		return 1
	}

	return 0
}

_check_gcc_and_kernel_defconfig() {
	local defconfig="$1"
	local ker_ver="$2"
	local gcc_ver="$3"
	local atleast_one_failure=0
	
	if ! grep -q "BR2_TOOLCHAIN_EXTERNAL_GCC_${gcc_ver}=y" "configs/$defconfig" ; then
		echo_red "Did not find symbol 'BR2_TOOLCHAIN_EXTERNAL_GCC_${gcc_ver}=y' in configs/$defconfig"
		atleast_one_failure=1
	fi

	if ! grep -q "BR2_TOOLCHAIN_EXTERNAL_HEADERS_${ker_ver}=y" "configs/$defconfig" ; then
		echo_red "Did not find symbol 'BR2_TOOLCHAIN_EXTERNAL_HEADERS_${ker_ver}=y' in configs/$defconfig"
		atleast_one_failure=1
	fi

	return $atleast_one_failure
}

_check_defconfig_vivado() {
	local defconfig="$1"
	local vivado_ver="$2"
	local atleast_one_failure=0

	local ker_ver gcc_ver

	if [ "$vivado_ver" = "2019_1" ] ; then
		gcc_ver=8
		if [ "$VIVADO_ARCH" = "zynq" ] ; then
			ker_ver=4_14
		elif [ "$VIVADO_ARCH" = "microblaze" ] ; then
			ker_ver=4_19
		else
			echo_red "Unknown or unspecied VIVADO_ARCH='$VIVADO_ARCH'"
			exit 1
		fi
	elif [ "$vivado_ver" = "2018_3" ] ; then
		gcc_ver=7
		ker_ver=4_14
	else
		echo_red "Unsupported version '$vivado_ver'"
		return 1
	fi

	_check_gcc_and_kernel_defconfig "$defconfig" "$ker_ver" "$gcc_ver" || atleast_one_failure=1

	_check_defconfig "$defconfig" || atleast_one_failure=1

	return $atleast_one_failure
}

_ensure_defconfigs_uptodate() {
	local toolprefix="$1"
	local atleast_one_failure=0
	local deconfigs versions defconfig

	eval defconfigs=\$${toolprefix}_DEFCONFIGS

	[ -n "$defconfigs" ] || {
		echo_red "No ${toolprefix}_DEFCONFIGS list provided"
		return 1
	}

	eval versions=\$${toolprefix}_VERSIONS

	[ -n "$versions" ] || {
		echo_red "No ${toolprefix}_VERSIONS list provided"
		return 1
	}

	local toolprefix_lower=$(tolower $toolprefix)
	for config in $defconfigs ; do
		for version in $versions ; do
			defconfig=${config}_${toolprefix_lower}_${version}_defconfig
			if _check_defconfig_${toolprefix_lower} "$defconfig" "$version" ; then
				echo_green "'configs/${defconfig} looks good"
				echo
			else
				atleast_one_failure=1
			fi
		done
	done

	return $atleast_one_failure
}

build_ensure_defconfigs_uptodate() {
	_ensure_defconfigs_uptodate VIVADO
}

BUILD_TYPE=${BUILD_TYPE:-${1}}
BUILD_TYPE=${BUILD_TYPE:-default}

build_${BUILD_TYPE}
