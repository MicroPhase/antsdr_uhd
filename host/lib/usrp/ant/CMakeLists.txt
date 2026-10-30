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
# UHD 4.9 moved the generic radio control implementation into the B200
# backend.  AntSDR uses the same CHDR control protocol, so compile that
# implementation here without enabling the B200 device itself.
            ${CMAKE_CURRENT_SOURCE_DIR}/../b200/b200_radio_ctrl_core.cpp
#            ${CMAKE_CURRENT_SOURCE_DIR}/ant_mb_eeprom.cpp
    )
endif(ENABLE_ANT)
