################################################################################
#
# rtl8723bu
#
################################################################################

RTL8723BU_VERSION = d79a676a8d3f0bb6ac8af126689c6ac6869cb6f2
RTL8723BU_SITE = $(call github,lwfinger,rtl8723bu,$(RTL8723BU_VERSION))
RTL8723BU_LICENSE = GPL-2.0, proprietary (*.bin firmware blobs)

RTL8723BU_MODULE_MAKE_OPTS = \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

define RTL8723BU_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB_SUPPORT)
	$(call KCONFIG_ENABLE_OPT,CONFIG_USB)
endef

define RTL8723BU_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(@D)/rtl8723b_fw.bin $(TARGET_DIR)/lib/firmware/rtl_bt/rtl8723b_fw.bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
