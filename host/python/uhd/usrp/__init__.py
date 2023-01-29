#
# Copyright 2020 Ettus Research, a National Instruments Brand
#
# SPDX-License-Identifier: GPL-3.0-or-later
#
""" @package usrp
Python UHD module containing the MultiUSRP and other objects
"""

from .multi_usrp import MultiUSRP
# Disable PyLint because the entire libtypes modules is a list of renames. It is
# thus less redundant to do a wildcard import, even if generally discouraged.
# We could also paste the contents of libtypes.py into here, but by leaving it
# separate we avoid importing the lib module in this __init__ file.
# pylint: disable=wildcard-import
from .libtypes import *
# pylint: enable=wildcard-import

from . import cal
