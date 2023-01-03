################################################################################
#
# rtl8189fs
#
################################################################################

RTL8189FS_VERSION = c93cfd712a3acd2ecdeda19a66d269c20f8803f1
RTL8189FS_SITE = $(call github,jwrdegoede,rtl8189ES_linux,$(RTL8189FS_VERSION))
RTL8189FS_LICENSE = GPL-2.0

# Undefine the hardcoded CONFIG_LITTLE_ENDIAN
RTL8189FS_USER_EXTRA_CLAGS = -UCONFIG_LITTLE_ENDIAN
# Set endianness
RTL8189FS_USER_EXTRA_CLAGS += -DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN

RTL8189FS_MODULE_MAKE_OPTS = \
	CONFIG_RTL8189FS=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR) \
	USER_EXTRA_CFLAGS="$(RTL8189FS_USER_EXTRA_CLAGS)"

define RTL8189FS_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_MAC80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_MMC)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
