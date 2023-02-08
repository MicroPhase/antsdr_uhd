################################################################################
#
# libm2k
#
################################################################################
LIBM2K_VERSION = 0.4.0
LIBM2K_SITE = $(call github,analogdevicesinc,libm2k,v$(LIBM2K_VERSION))

LIBM2K_INSTALL_STAGING = YES
LIBM2K_LICENSE = LGPL-2.1
LIBM2K_LICENSE_FILES = LICENSE
LIBM2K_DEPENDENCIES = libiio

LIBM2K_CONF_OPTS = -DENABLE_DOC=OFF \
	-DBUILD_EXAMPLES=ON \
	-DENABLE_LOG=OFF \
	-DENABLE_EXCEPTIONS=ON \
	-DENABLE_PYTHON=OFF \
	-DENABLE_CSHARP=OFF \
	-DENABLE_LABVIEW=OFF \
	-DENABLE_TOOLS=ON \
	-DINSTALL_UDEV_RULES=OFF


$(eval $(cmake-package))
