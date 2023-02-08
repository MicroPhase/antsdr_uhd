#!/bin/sh

BOARD_DIR="$(dirname $0)"

install -D -m 0755 ${BOARD_DIR}/S40network ${TARGET_DIR}/etc/init.d/

sed -i '/hostname/a ::sysinit:/bin/mount -t debugfs none /sys/kernel/debug/'\
	${TARGET_DIR}/etc/inittab

rm -rf ${TARGET_DIR}/etc/dropbear
mkdir -p ${TARGET_DIR}/etc/dropbear
${HOST_DIR}/bin/dropbearkey -t rsa -f ${TARGET_DIR}/etc/dropbear/dropbear_rsa_host_key
${HOST_DIR}/bin/dropbearkey -t dss -f ${TARGET_DIR}/etc/dropbear/dropbear_dss_host_key
${HOST_DIR}/bin/dropbearkey -t ecdsa -f ${TARGET_DIR}/etc/dropbear/dropbear_ecdsa_host_key
