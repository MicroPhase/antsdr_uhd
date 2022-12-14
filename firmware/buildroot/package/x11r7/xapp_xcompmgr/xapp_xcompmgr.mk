################################################################################
#
# xapp_xcompmgr
#
################################################################################

XAPP_XCOMPMGR_VERSION = 1.1.9
XAPP_XCOMPMGR_SOURCE = xcompmgr-$(XAPP_XCOMPMGR_VERSION).tar.xz
XAPP_XCOMPMGR_SITE = https://xorg.freedesktop.org/archive/individual/app
XAPP_XCOMPMGR_LICENSE = MIT
XAPP_XCOMPMGR_LICENSE_FILES = COPYING
XAPP_XCOMPMGR_DEPENDENCIES = \
	xlib_libXcomposite \
	xlib_libXdamage \
	xlib_libXext \
	xlib_libXfixes \
	xlib_libXrender

$(eval $(autotools-package))
