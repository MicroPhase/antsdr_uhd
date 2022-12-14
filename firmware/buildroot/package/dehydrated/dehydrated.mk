################################################################################
#
# dehydrated
#
################################################################################

DEHYDRATED_VERSION = 0.7.1
DEHYDRATED_SITE = https://github.com/dehydrated-io/dehydrated/releases/download/v$(DEHYDRATED_VERSION)

DEHYDRATED_LICENSE = MIT
DEHYDRATED_LICENSE_FILES = LICENSE

define DEHYDRATED_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/dehydrated $(TARGET_DIR)/usr/bin/dehydrated
	$(INSTALL) -D -m 0644 $(@D)/docs/examples/config $(TARGET_DIR)/etc/dehydrated/config
endef

$(eval $(generic-package))
