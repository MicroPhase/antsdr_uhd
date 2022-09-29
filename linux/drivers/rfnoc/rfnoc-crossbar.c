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

#include <linux/idr.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/io.h>
#include <linux/device.h>
#include <linux/debugfs.h>
#include <linux/uaccess.h>
#include <linux/rfnoc/rfnoc-crossbar.h>
#include <uapi/linux/rfnoc/rfnoc-crossbar.h>

static DEFINE_IDA(rfnoc_crossbar_ida);
static struct class *rfnoc_crossbar_class;

struct rfnoc_crossbar_route {
	struct list_head node;

	u8 dest;
	u8 port;
};

#define CONFIG_DEBUG_FS

#ifdef CONFIG_DEBUG_FS
struct dentry *debug_root;
struct mutex debugfs_mutex;
#endif /* CONFIG_DEBUG_FS */

#define to_rfnoc_crossbar(x) (container_of(dev, struct rfnoc_crossbar, dev))

struct rfnoc_crossbar_route *
__rfnoc_crossbar_route_find(struct rfnoc_crossbar *xb, u8 dest)
{
	struct rfnoc_crossbar_route *found = NULL;
	struct rfnoc_crossbar_route *route;

	list_for_each_entry(route, &xb->routes, node) {
		if (route->dest == dest) {
			found = route;
			break;
		}
	}

	return found;
}

int rfnoc_crossbar_add_route(struct rfnoc_crossbar *xb, u8 dest, u8 port)
{
	struct rfnoc_crossbar_route *route;
	int err;
	unsigned long flags;

	if (xb && xb->ops && xb->ops->add_route) {
		err = xb->ops->add_route(xb, dest, port);
		if (err)
			return err;
	}

	/* first look if we have this one already,
	 * if so overwrite the destination */
	spin_lock_irqsave(&xb->routes_list_lock, flags);
	route = __rfnoc_crossbar_route_find(xb, dest);
	if (route)
		route->port = port;
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	if (route)
		return 0;

	dev_dbg(&xb->dev, "in %s: dest=%u, port=%u\n", __func__, dest, port);

	/* nope? then remember the new one in a new route */
	route = devm_kzalloc(&xb->dev, sizeof(*route), GFP_KERNEL);
	if (!route)
		return -ENOMEM;

	route->dest = dest;
	route->port = port;
	spin_lock_irqsave(&xb->routes_list_lock, flags);
	list_add_tail(&route->node, &xb->routes);
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	return 0;
}
EXPORT_SYMBOL_GPL(rfnoc_crossbar_add_route);

int rfnoc_crossbar_del_route(struct rfnoc_crossbar *xb, u8 dest, u8 port)
{
	struct rfnoc_crossbar_route *route, *next;
	unsigned long flags;

	spin_lock_irqsave(&xb->routes_list_lock, flags);
	list_for_each_entry(route, &xb->routes, node) {
		if (route->dest == dest && route->port == port)
			break;
	}
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	if (xb && xb->ops && xb->ops->del_route)
		xb->ops->del_route(xb, route);

	spin_lock_irqsave(&xb->routes_list_lock, flags);
	list_for_each_entry_safe(route, next, &xb->routes, node) {
		if (route->dest == dest && route->port == port) {
			list_del(&route->node);
			devm_kfree(&xb->dev, route);
			break;
		}
	}
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	return 0;
}
EXPORT_SYMBOL_GPL(rfnoc_crossbar_del_route);

int rfnoc_crossbar_set_local_addr(struct rfnoc_crossbar *xb, u8 local_addr)
{
	if (xb && xb->ops && xb->ops->set_local_addr) {
		dev_dbg(&xb->dev, "%s\n", __func__);
		xb->ops->set_local_addr(xb, local_addr);
		xb->local_addr = local_addr;
		return 0;
	}

	return -ENODEV;
}
EXPORT_SYMBOL_GPL(rfnoc_crossbar_set_local_addr);

static ssize_t local_addr_show(struct device *dev,
			 struct device_attribute *attr, char *buf)
{
	struct rfnoc_crossbar *xb = to_rfnoc_crossbar(dev);

	return sprintf(buf, "0x%02x\n", xb->local_addr);
}

static ssize_t local_addr_store(struct device *dev,
			 struct device_attribute *attr,
			 const char *buf, size_t len)
{
	struct rfnoc_crossbar *xb = to_rfnoc_crossbar(dev);
	int err;
	u8 local_addr;

	local_addr = simple_strtoul(buf, NULL, 16);
	err = rfnoc_crossbar_set_local_addr(xb, local_addr);
	if (err < 0)
		return err;

	return len;
}
static DEVICE_ATTR_RW(local_addr);

static ssize_t name_show(struct device *dev,
			 struct device_attribute *attr, char *buf)
{
	struct rfnoc_crossbar *xb = to_rfnoc_crossbar(dev);

	return sprintf(buf, "%s\n", xb->name);
}
static DEVICE_ATTR_RO(name);

static ssize_t nports_show(struct device *dev,
			   struct device_attribute *attr, char *buf)
{
	struct rfnoc_crossbar *xb = to_rfnoc_crossbar(dev);

	return sprintf(buf, "%u\n", xb->nports);
}
static DEVICE_ATTR_RO(nports);

static struct attribute *rfnoc_crossbar_attrs[] = {
	&dev_attr_name.attr,
	&dev_attr_nports.attr,
	&dev_attr_local_addr.attr,
	NULL,
};
ATTRIBUTE_GROUPS(rfnoc_crossbar);

static int rfnoc_crossbar_open(struct inode *inode, struct file *filp)
{
	return 0;
}

static int rfnoc_crossbar_close(struct inode *inode, struct file *filp)
{
	return 0;
}

long rfnoc_crossbar_ioctl(struct file *filp, unsigned int cmd,
			  unsigned long arg)
{
	void __user *argp = (void __user *)arg;
	struct rfnoc_crossbar_cmd rcmd;
	struct rfnoc_crossbar *xb = container_of(filp->private_data,
						 struct rfnoc_crossbar,
						 mdev);
	int err;

	err = copy_from_user(&rcmd, argp, sizeof(rcmd));
	if (err) {
		dev_err(&xb->dev, "Failed to copy cmd from user\n");
		return -EFAULT;
	}

	switch (cmd) {
	case RFNCBWRTIOC:
		return rfnoc_crossbar_add_route(xb, rcmd.dest_addr,
						rcmd.dest_port);
	case RFNCBDRTIOC:
		return rfnoc_crossbar_del_route(xb, rcmd.dest_addr,
						rcmd.dest_port);
	default:
		return -EINVAL;
	};

	return 0;
}

#ifdef CONFIG_DEBUG_FS
static u32 __rfnoc_crossbar_get_port_stats(struct rfnoc_crossbar *xb,
                                           u8 from, u8 to)
{
	if (xb && xb->ops && xb->ops->get_port_stats)
		return xb->ops->get_port_stats(xb, from, to);

	return -EINVAL;
}


static const struct file_operations rfnoc_crossbar_fops = {
	.owner			= THIS_MODULE,
	.open			= rfnoc_crossbar_open,
	.release		= rfnoc_crossbar_close,
	.unlocked_ioctl         = rfnoc_crossbar_ioctl,
};

static int rfnoc_crossbar_routes_show(struct seq_file *s, void *unused)
{
	struct rfnoc_crossbar *xb = s->private;
	struct rfnoc_crossbar_route *route;
	unsigned long flags;
	struct list_head *node;

	mutex_lock(&debugfs_mutex);

	seq_printf(s, "%s routes:\n", dev_name(&xb->dev));

	seq_printf(s, "Local:\t\t%u\n", xb->local_addr);
	seq_printf(s, "Dest:\t\t\tPort:\n");


	spin_lock_irqsave(&xb->routes_list_lock, flags);
	list_for_each(node, &xb->routes) {
		route = container_of(node, struct rfnoc_crossbar_route, node);
		seq_printf(s, "xx.xx.xx.%02x >\t\t%u\n", route->dest,
			   route->port);
	}
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	mutex_unlock(&debugfs_mutex);

	return 0;
}

static int rfnoc_crossbar_routes_debug_open(struct inode *inode,
					    struct file *file)
{
	return single_open(file, rfnoc_crossbar_routes_show, inode->i_private);
}

static const struct file_operations debug_routes_fops = {
	.open = rfnoc_crossbar_routes_debug_open,
	.read = seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

static int rfnoc_crossbar_stats_show(struct seq_file *s, void *unused)
{
	struct rfnoc_crossbar *xb = s->private;
	int i, k;

	mutex_lock(&debugfs_mutex);

	seq_printf(s, "%s Statistics:\n", dev_name(&xb->dev));
	seq_printf(s, "IN->OUT\t");
	for (i = 0; i < xb->nports; i++)
		seq_printf(s, "%02u        ", i);
	seq_printf(s, "\n");
	for (i = 0; i < xb->nports; i++)
	{
		seq_printf(s, "%02u\t", i);
		for(k = 0; k < xb->nports; k++)
		{
			seq_printf(s, "%08x  ",
				   __rfnoc_crossbar_get_port_stats(xb, i, k));
		}
		seq_printf(s, "\n");
	}

	mutex_unlock(&debugfs_mutex);

	return 0;
}

static int rfnoc_crossbar_stats_debug_open(struct inode *inode,
					    struct file *file)
{
	return single_open(file, rfnoc_crossbar_stats_show, inode->i_private);
}


static const struct file_operations debug_stats_fops = {
	.open = rfnoc_crossbar_stats_debug_open,
	.read = seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};
#endif /* CONFIG_DEBUG_FS */

int rfnoc_crossbar_register(struct device *dev, const char *name,
			    const struct rfnoc_crossbar_ops *ops, u8 nports,
			    void *priv)
{
	struct rfnoc_crossbar *xb;
	int id, err;

	if (!ops || !ops->add_route || !ops->del_route) {
		dev_err(dev, "Trying to register with invalid ops\n");
		return -EINVAL;
	}

	if (!name || !strlen(name)) {
		dev_err(dev, "Trying to register with no name\n");
		return -EINVAL;
	}

	xb = kzalloc(sizeof(*xb), GFP_KERNEL);
	if (!xb)
		return -ENOMEM;

	id = ida_simple_get(&rfnoc_crossbar_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		err = id;
		goto error_kfree;
	}

	xb->name = name;
	xb->nports = nports;
	xb->priv = priv;
	xb->ops = ops;

	device_initialize(&xb->dev);
	xb->dev.class = rfnoc_crossbar_class;
	xb->dev.parent = dev;
	xb->dev.of_node = dev->of_node;
	xb->dev.id = id;
	dev_set_drvdata(dev, xb);

	INIT_LIST_HEAD(&xb->routes);
	spin_lock_init(&xb->routes_list_lock);

	err = dev_set_name(&xb->dev, "crossbar%d", id);
	if (err)
		goto error_device;

	err = device_add(&xb->dev);
	if (err)
		goto error_device;

	xb->mdev.minor = MISC_DYNAMIC_MINOR;
	xb->mdev.name  = dev_name(&xb->dev);
	xb->mdev.fops  = &rfnoc_crossbar_fops;

	err = misc_register(&xb->mdev);
	if (err) {
		dev_err(&xb->dev, "Failed to register miscdevice\n");
		goto out_misc;
	}

#ifdef CONFIG_DEBUG_FS
	xb->debug_root = debugfs_create_dir(dev_name(&xb->dev), debug_root);
	if (!xb->debug_root) {
		dev_err(&xb->dev, "Failed to add debugfs root\n");
		goto out_misc;
	}

	xb->routes_debug_root = debugfs_create_file("routes", 0664,
						    xb->debug_root,
						    xb, &debug_routes_fops);
	if (!xb->routes_debug_root) {
		dev_err(&xb->dev, "Failed to add debugfs entry for routes\n");
		goto out_debugfs;
	}

	xb->stats_debug_root = debugfs_create_file("stats", 0664,
						   xb->debug_root,
						   xb, &debug_stats_fops);

	if (!xb->stats_debug_root) {
		dev_err(&xb->dev, "Failed to add debugfs entry for routes\n");
		goto out_debugfs;
	}

	dev_info(&xb->dev, "%s registered\n", xb->name);

	return 0;

out_debugfs:
	debugfs_remove_recursive(xb->debug_root);
#endif /* CONFIG_DEBUG_FS */
out_misc:
	device_unregister(&xb->dev);
error_device:
	ida_simple_remove(&rfnoc_crossbar_ida, id);
error_kfree:
	kfree(xb);

	return err;
}
EXPORT_SYMBOL_GPL(rfnoc_crossbar_register);

void rfnoc_crossbar_unregister(struct device *dev)
{
	struct rfnoc_crossbar *xb = dev_get_drvdata(dev);

#ifdef CONFIG_DEBUG_FS
	debugfs_remove_recursive(xb->debug_root);
#endif /* CONFIG_DEBUG_FS */

	misc_deregister(&xb->mdev);

	device_unregister(&xb->dev);
}
EXPORT_SYMBOL_GPL(rfnoc_crossbar_unregister);

static void rfnoc_crossbar_dev_release(struct device *dev)
{
	struct rfnoc_crossbar *xb = to_rfnoc_crossbar(dev);
	struct rfnoc_crossbar_route *route, *next;
	unsigned long flags;

	spin_lock_irqsave(&xb->routes_list_lock, flags);
	list_for_each_entry_safe(route, next, &xb->routes, node) {
		list_del(&route->node);
	}
	spin_unlock_irqrestore(&xb->routes_list_lock, flags);

	ida_simple_remove(&rfnoc_crossbar_ida, xb->dev.id);
	kfree(xb);
}

static int __init rfnoc_crossbar_class_init(void)
{
	rfnoc_crossbar_class = class_create(THIS_MODULE, "rfnoc_crossbar");
	if (IS_ERR(rfnoc_crossbar_class))
		return PTR_ERR(rfnoc_crossbar_class);

	rfnoc_crossbar_class->dev_groups = rfnoc_crossbar_groups;
	rfnoc_crossbar_class->dev_release = rfnoc_crossbar_dev_release;

#ifdef CONFIG_DEBUG_FS
	debug_root = debugfs_create_dir("rfnoc_crossbars", NULL);
#endif /* CONFIG_DEBUG_FS */

	return 0;
}

static void __exit rfnoc_crossbar_exit(void)
{
#ifdef CONFIG_DEBUG_FS
	debugfs_remove_recursive(debug_root);
#endif /* CONFIG_DEBUG_FS */
	class_destroy(rfnoc_crossbar_class);
	ida_destroy(&rfnoc_crossbar_ida);
}

MODULE_AUTHOR("Moritz Fischer <mdf@kernel.org>");
MODULE_DESCRIPTION("RFNoC Crossbar");
MODULE_LICENSE("GPL v2");

subsys_initcall(rfnoc_crossbar_class_init);
module_exit(rfnoc_crossbar_exit);
