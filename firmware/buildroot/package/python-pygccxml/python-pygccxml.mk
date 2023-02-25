################################################################################
#
# python-pygccxml
#
################################################################################

# Please keep in sync with
# package/python3-pygccxml/python3-pygccxml.mk
PYTHON_PYGCCXML_VERSION = v2.2.1
PYTHON_PYGCCXML_SOURCE = pygccxml-$(PYTHON_PYGCCXML_VERSION).tar.gz
PYTHON_PYGCCXML_SITE = https://github.com/CastXML/pygccxml
PYTHON_PYGCCXML_SITE_METHOD = git
PYTHON_PYGCCXML_SETUP_TYPE = setuptools
PYTHON_PYGCCXML_LICENSE = MIT
PYTHON_PYGCCXML_LICENSE_FILES = LICENSE.rst

$(eval $(python-package))
$(eval $(host-python-package))

