#!/bin/sh

# genimage will need to find the extlinux.conf
# in the binaries directory

BOARD_DIR="$(dirname $0)"

install -m 0644 -D $BOARD_DIR/extlinux.conf $BINARIES_DIR/extlinux.conf
install -m 0755 -D $BOARD_DIR/net_set ${TARGET_DIR}/sbin
install -m 0755 -D $BOARD_DIR/e200 ${TARGET_DIR}/sbin
install -m 0755 -D $BOARD_DIR/S90device_start.sh ${TARGET_DIR}/etc/init.d/



