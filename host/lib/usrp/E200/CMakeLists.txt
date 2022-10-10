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
if(ENABLE_E200)
    LIBUHD_APPEND_SOURCES(
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_image_loader.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_impl.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_iface.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_io_impl.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_uart.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_cores.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/E200_mb_eeprom.cpp
    )
endif(ENABLE_E200)
