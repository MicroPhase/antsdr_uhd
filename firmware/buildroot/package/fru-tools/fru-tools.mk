################################################################################
#
# fru-tools
#
################################################################################
FRU_TOOLS_VERSION = 8927da366f99a987b48e9aacc377f18dd7f20a4b
FRU_TOOLS_SITE = https://github.com/analogdevicesinc/fru_tools.git
FRU_TOOLS_SITE_METHOD = git
FRU_TOOLS_INSTALL_STAGING = YES
FRU_TOOLS_LICENSE = GPL-2.0
FRU_TOOLS_LICENSE_FILES = license.txt

define FRU_TOOLS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) ALL
endef

define FRU_TOOLS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/fru-dump $(TARGET_DIR)/usr/sbin/fru-dump
endef

$(eval $(generic-package))
