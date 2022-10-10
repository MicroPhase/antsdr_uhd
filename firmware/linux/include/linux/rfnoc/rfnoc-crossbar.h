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

#ifndef _LINUX_RFNOC_CROSSBAR_H
#define _LINUX_RFNOC_CROSSBAR_H

#include <linux/miscdevice.h>

struct rfnoc_crossbar {
	struct device dev;

	const char *name;

	u8 local_addr;
	u8 nports;
	struct list_head routes;
	spinlock_t routes_list_lock;

	const struct rfnoc_crossbar_ops *ops;
	void *priv;

#ifdef CONFIG_DEBUG_FS
	struct dentry *debug_root;
	struct dentry *routes_debug_root, *stats_debug_root;
#endif

	struct miscdevice mdev;
};

struct rfnoc_crossbar_route;

struct rfnoc_crossbar_ops {
        void(*set_local_addr)(struct rfnoc_crossbar *, u8);
        int(*add_route)(struct rfnoc_crossbar *, u8, u8);
        int(*del_route)(struct rfnoc_crossbar *, struct rfnoc_crossbar_route *);
        u32(*get_port_stats)(struct rfnoc_crossbar *, u8 from, u8 to);
};

int rfnoc_crossbar_register(struct device *dev, const char *name,
			    const struct rfnoc_crossbar_ops *ops, u8 nports,
			    void *priv);

void rfnoc_crossbar_unregister(struct device *dev);

int rfnoc_crossbar_set_local_addr(struct rfnoc_crossbar *xb, u8 local_addr);

int rfnoc_crossbar_add_route(struct rfnoc_crossbar *xb, u8 dest, u8 port);

int rfnoc_crossbar_del_route(struct rfnoc_crossbar *xb, u8 dest, u8 port);

#endif /* _LINUX_RFNOC_CROSSBAR_H */

