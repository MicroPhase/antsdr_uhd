################################################################################
#
# volk
#
################################################################################

VOLK_VERSION = 2.5.0
VOLK_SITE = https://github.com/gnuradio/volk/releases/download/v$(VOLK_VERSION)
VOLK_LICENSE = GPL-3.0+
VOLK_LICENSE_FILES = COPYING

# For third-party blocks, volk is mandatory at
# compile time.
VOLK_INSTALL_STAGING = YES

ifeq ($(BR2_TOOLCHAIN_HAS_LIBATOMIC),y)
VOLK_CONF_OPTS += -DCMAKE_EXE_LINKER_FLAGS=-latomic
endif

$(eval $(cmake-package))
