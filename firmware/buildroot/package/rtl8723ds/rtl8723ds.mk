################################################################################
#
# rtl8723ds
#
################################################################################

RTL8723DS_VERSION = a638cc8639015b8b9390af3350fab0366b6c87e7
RTL8723DS_SITE = $(call github,lwfinger,rtl8723ds,$(RTL8723DS_VERSION))
RTL8723DS_LICENSE = GPL-2.0

# Undefine the hardcoded CONFIG_LITTLE_ENDIAN
RTL8723DS_USER_EXTRA_CLAGS = -UCONFIG_LITTLE_ENDIAN
# Set endianness
RTL8723DS_USER_EXTRA_CLAGS += -DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN

RTL8723DS_MODULE_MAKE_OPTS = \
	CONFIG_RTL8723DS=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR) \
	USER_EXTRA_CFLAGS="$(RTL8723DS_USER_EXTRA_CLAGS)"

define RTL8723DS_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_MMC)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
