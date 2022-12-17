#
# Copyright 2012-2013,2015 Ettus Research LLC
# Copyright 2018 Ettus Research, a National Instruments Company
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

########################################################################
# This file included, use CMake directory variables
########################################################################

########################################################################
# Conditionally configure the B200 support
########################################################################
if(ENABLE_ANT)
    LIBUHD_APPEND_SOURCES(
            ${CMAKE_CURRENT_SOURCE_DIR}/ant_impl.cpp
#            ${CMAKE_CURRENT_SOURCE_DIR}/ant_iface.cpp
            ${CMAKE_CURRENT_SOURCE_DIR}/ant_io_impl.cpp
            ${CMAKE_CURRENT_SOURCE_DIR}/ant_uart.cpp
            ${CMAKE_CURRENT_SOURCE_DIR}/ant_cores.cpp
#            ${CMAKE_CURRENT_SOURCE_DIR}/ant_mb_eeprom.cpp
    )
endif(ENABLE_ANT)
