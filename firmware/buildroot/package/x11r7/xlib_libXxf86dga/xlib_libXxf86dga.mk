################################################################################
#
# xlib_libXxf86dga
#
################################################################################

XLIB_LIBXXF86DGA_VERSION = 1.1.6
XLIB_LIBXXF86DGA_SOURCE = libXxf86dga-$(XLIB_LIBXXF86DGA_VERSION).tar.xz
XLIB_LIBXXF86DGA_SITE = http://xorg.freedesktop.org/releases/individual/lib
XLIB_LIBXXF86DGA_LICENSE = MIT
XLIB_LIBXXF86DGA_LICENSE_FILES = COPYING
XLIB_LIBXXF86DGA_CPE_ID_VENDOR = x
XLIB_LIBXXF86DGA_CPE_ID_PRODUCT = libxxf86dga
XLIB_LIBXXF86DGA_INSTALL_STAGING = YES
XLIB_LIBXXF86DGA_DEPENDENCIES = xlib_libX11 xlib_libXext xorgproto
XLIB_LIBXXF86DGA_CONF_OPTS = --disable-malloc0returnsnull

$(eval $(autotools-package))
