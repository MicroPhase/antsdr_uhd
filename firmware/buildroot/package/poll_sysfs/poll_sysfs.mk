################################################################################
#
# poll_sysfs
#
################################################################################

POLL_SYSFS_LICENSE = GPLv2


define POLL_SYSFS_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_LDFLAGS) \
		package/poll_sysfs/poll_sysfs.c -o $(@D)/poll_sysfs
endef

define POLL_SYSFS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/poll_sysfs $(TARGET_DIR)/sbin/poll_sysfs
endef

$(eval $(generic-package))
