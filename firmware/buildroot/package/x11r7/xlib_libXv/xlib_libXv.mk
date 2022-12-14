################################################################################
#
# xlib_libXv
#
################################################################################

XLIB_LIBXV_VERSION = 1.0.12
XLIB_LIBXV_SOURCE = libXv-$(XLIB_LIBXV_VERSION).tar.xz
XLIB_LIBXV_SITE = http://xorg.freedesktop.org/releases/individual/lib
XLIB_LIBXV_LICENSE = ISC-like
XLIB_LIBXV_LICENSE_FILES = COPYING
XLIB_LIBXV_CPE_ID_VENDOR = x.org
XLIB_LIBXV_CPE_ID_PRODUCT = libxv
XLIB_LIBXV_INSTALL_STAGING = YES
XLIB_LIBXV_DEPENDENCIES = xlib_libX11 xlib_libXext xorgproto
XLIB_LIBXV_CONF_OPTS = --disable-malloc0returnsnull

$(eval $(autotools-package))
