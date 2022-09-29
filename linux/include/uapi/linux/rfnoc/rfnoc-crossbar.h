/*
 * Copyright (c) 2017 National Instruments Corp
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 */

#ifndef _UAPI_LINUX_RFNOC_CROSSBAR_H
#define _UAPI_LINUX_RFNOC_CROSSBAR_H

#include <linux/ioctl.h>
#include <linux/types.h>

#define RFNCB_IOCTL_BASE 'R'

struct rfnoc_crossbar_cmd {
	__u8 dest_addr;
	__u8 dest_port;
};

#define RFNCBWRTIOC _IOW(RFNCB_IOCTL_BASE, 1, struct rfnoc_crossbar_cmd)
#define RFNCBDRTIOC _IOW(RFNCB_IOCTL_BASE, 2, struct rfnoc_crossbar_cmd)

#endif /* _UAPI_LINUX_RFNOC_CROSSBAR_H */
