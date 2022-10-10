/*
 * Copyright (C) 2017 National Instruments Corp
 *
 * SPDX-License-Identifier: GPL-2.0
 */

#include <linux/lcm.h>
#include <linux/list.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/spinlock.h>
#include <linux/miscdevice.h>

#include <linux/usrp.h>
#include <linux/usrp/usrp-dma.h>

#include <media/videobuf2-dma-contig.h>
#include <media/videobuf2-dma-sg.h>

static int debug;
module_param(debug, int, 0644);

#define dprintk(level, fmt, arg...)					      \
	do {								      \
		if (debug >= level)					      \
			pr_info("usrp-dma-core: %s: " fmt, __func__, ## arg); \
	} while (0)

#define USRP_DMA_API_MAJOR 1
#define USRP_DMA_API_MINOR 0

static DEFINE_IDA(usrp_dma_tx_ida);
static DEFINE_IDA(usrp_dma_rx_ida);

static inline struct usrp_dma *to_usrp_dma(struct file *file)
{
	return container_of(file->private_data, struct usrp_dma, mdev);
}

static int usrp_dma_core_fop_open(struct inode *inode, struct file *file)
{
	return 0;
}

void *usrp_dma_get_drvdata(struct usrp_dma *dma)
{
	return dma->priv;
}

void usrp_dma_set_drvdata(struct usrp_dma *dma, void *drvdata)
{
	dma->priv = drvdata;
}

static ssize_t port_show(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct usrp_dma *dma;
	dma = dev_get_drvdata(dev);
	return sprintf(buf, "%d\n", dma->port);
};
static DEVICE_ATTR_RO(port);

static ssize_t api_maj_show(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct usrp_dma *dma;
	dma = dev_get_drvdata(dev);
	return sprintf(buf, "%u\n", USRP_DMA_API_MAJOR);
};
static DEVICE_ATTR_RO(api_maj);

static ssize_t api_min_show(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct usrp_dma *dma;
	dma = dev_get_drvdata(dev);
	return sprintf(buf, "%u\n", USRP_DMA_API_MINOR);
};
static DEVICE_ATTR_RO(api_min);


static struct attribute *sysfs_entries[] = {
	&dev_attr_port.attr,
	&dev_attr_api_maj.attr,
	&dev_attr_api_min.attr,
	NULL
};

static struct attribute_group usrp_dma_attr_group = {
	.name = NULL,
	.attrs = sysfs_entries,
};

static const struct attribute_group *usrp_dma_attr_groups[] = {
	&usrp_dma_attr_group,
	NULL
};

static int usrp_dma_core_fop_release(struct inode *inode, struct file *file)
{
	struct usrp_dma *dma = to_usrp_dma(file);
	struct vb2_queue *q = &dma->queue;

	if (q->lock)
		mutex_lock(q->lock);
	if (file->private_data == q->owner) {
		vb2_queue_release(q);
		q->owner = NULL;
	}
	if (q->lock)
		mutex_unlock(q->lock);

	return 0;
}

int usrp_dma_ioc_expbuf(struct vb2_queue *q,
			struct usrp_exportbuffer __user * arg)
{
	int err;
	struct usrp_exportbuffer req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	err = vb2_core_expbuf(q, &req.fd, req.type, req.index, req.plane,
			      req.flags);

	if (copy_to_user((void __user *)arg, &req, sizeof(req)))
		return -EFAULT;

	return err;
}

int usrp_dma_ioc_reqbufs(struct vb2_queue *q,
			 struct usrp_requestbuffers __user * arg)
{
	int err;
	struct usrp_requestbuffers req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	err = vb2_core_reqbufs(q, req.memory, &req.count);

	if (copy_to_user((void __user *)arg, &req, sizeof(req)))
		return -EFAULT;

	return err;
}

int usrp_dma_ioc_querybuf(struct vb2_queue *q, struct usrp_buffer __user * arg)
{
	struct usrp_buffer req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	vb2_core_querybuf(q, req.index, &req);

	if (copy_to_user((void __user *)arg, &req, sizeof(req)))
		return -EFAULT;

	return 0;
}

int usrp_dma_ioc_streamon(struct vb2_queue *q, enum usrp_buf_type type)
{
	return vb2_core_streamon(q, type);
}

int usrp_dma_ioc_streamoff(struct vb2_queue *q, enum usrp_buf_type type)
{
	return vb2_core_streamoff(q, type);
}

static int __verify_length(struct vb2_buffer *vb, const struct usrp_buffer *b)
{
	unsigned int length;

	if (!USRP_TYPE_IS_OUTPUT(b->type))
		return 0;

	length = (b->memory == USRP_MEMORY_USERPTR)
	    ? b->length : vb->planes[0].length;

	if (b->bytesused > length)
		return -EINVAL;

	return 0;
}

static void usrp_dma_warn_zero_bytesused(struct vb2_buffer *vb)
{
	static bool check_once;

	if (check_once)
		return;

	check_once = true;

	pr_warn("use of bytesused == 0 is deprecated and will be removed in the future,\n");
}

static int usrp_dma_fill_vb2_usrp_buffer(struct vb2_buffer *vb, struct usrp_buffer *b)
{
	struct usrp_dma_buffer *vbuf = to_usrp_dma_buffer(vb);
	struct vb2_plane *planes = vbuf->planes;
	int ret;

	ret = __verify_length(vb, b);
	if (ret < 0) {
		dprintk(1, "plane parameters verification failed: %d\n", ret);
		return ret;
	}

	switch (b->memory) {
		case USRP_MEMORY_USERPTR:
			planes[0].m.userptr = b->m.userptr;
			planes[0].length = b->length;
			break;
		case USRP_MEMORY_DMABUF:
			planes[0].m.fd = b->m.fd;
			planes[0].length = b->length;
			break;
		default:
			planes[0].m.offset = vb->planes[0].m.offset;
			planes[0].length = vb->planes[0].length;
			break;
	}

	planes[0].data_offset = 0;
	if (USRP_TYPE_IS_OUTPUT(b->type)) {
		if (b->bytesused == 0)
			usrp_dma_warn_zero_bytesused(vb);

		if (vb->vb2_queue->allow_zero_bytesused)
			planes[0].bytesused = b->bytesused;
		else
			planes[0].bytesused = b->bytesused ?
				b->bytesused : planes[0].length;
	} else
		planes[0].bytesused = 0;

	return 0;
}

static int usrp_dma_queue_buf(struct vb2_queue *q, struct usrp_buffer *b)
{
	struct usrp_dma_buffer *vbuf;
	struct vb2_buffer *vb;
	int ret;

	if (b->type != q->type) {
		dprintk(1, "invalid buffer type\n");
		return -EINVAL;
	}

	if (b->index >= q->num_buffers) {
		dprintk(1, "buffer index out of range\n");
		return -EINVAL;
	}

	if (q->bufs[b->index] == NULL) {
		/* Should never happen */
		dprintk(1, "buffer is NULL\n");
		return -EINVAL;
	}

	if (b->memory != q->memory) {
		dprintk(1, "invalid memory type\n");
		return -EINVAL;
	}

	vb = q->bufs[b->index];
	vbuf = to_usrp_dma_buffer(vb);

	if (!vb->prepared) {
		/* Copy relevant information provided by the userspace */
		memset(vbuf->planes, 0,
		       sizeof(vbuf->planes[0]) * vb->num_planes);
		ret = usrp_dma_fill_vb2_usrp_buffer(vb, b);
		if (ret)
			return ret;
	}

	return 0;
}

int usrp_dma_ioc_qbuf(struct vb2_queue *q, struct usrp_buffer __user * arg)
{
	int err;
	struct usrp_buffer req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	err = usrp_dma_queue_buf(q, &req);
	if (err)
		return err;
	err = vb2_core_qbuf(q, req.index, &req, NULL);

	if (copy_to_user((void __user *)arg, &req, sizeof(req)))
		return -EFAULT;

	return err;
}

int usrp_dma_ioc_dqbuf(struct vb2_queue *q, struct usrp_buffer __user * arg)
{
	int err;
	struct usrp_buffer req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	err = vb2_core_dqbuf(q, &req.index, &req, false);

	if (copy_to_user((void __user *)arg, &req, sizeof(req)))
		return -EFAULT;

	return err;
}

int usrp_dma_ioc_set_fmt(struct usrp_dma *dma, struct usrp_fmt __user *arg)
{
	struct usrp_fmt req;

	if (copy_from_user(&req, (void __user *)arg, sizeof(req)))
		return -EFAULT;

	if (dma->ops && dma->ops->set_fmt)
		return dma->ops->set_fmt(dma, &req);

	return -ENOTTY;
}

static long usrp_dma_core_fop_ioctl(struct file *file, unsigned int cmd,
				    unsigned long arg)
{
	struct usrp_dma *dma = to_usrp_dma(file);

	switch (cmd) {
	case USRPIOC_EXPBUF:
		return usrp_dma_ioc_expbuf(&dma->queue,
					   (struct usrp_exportbuffer
					    __user *)arg);
	case USRPIOC_REQBUFS:
		return usrp_dma_ioc_reqbufs(&dma->queue,
					    (struct usrp_requestbuffers __user
					     *)arg);

	case USRPIOC_QUERYBUF:
		return usrp_dma_ioc_querybuf(&dma->queue,
					     (struct usrp_buffer __user *)arg);

	case USRPIOC_QBUF:
		return usrp_dma_ioc_qbuf(&dma->queue,
					 (struct usrp_buffer __user *)arg);

	case USRPIOC_DQBUF:
		return usrp_dma_ioc_dqbuf(&dma->queue,
					  (struct usrp_buffer __user *)arg);

	case USRPIOC_STREAMON: {
		enum usrp_buf_type type = (int)arg;

		return usrp_dma_ioc_streamon(&dma->queue, type);
	}

	case USRPIOC_STREAMOFF: {
		enum usrp_buf_type type = (int)arg;

		return usrp_dma_ioc_streamoff(&dma->queue, type);
	}

	case USRPIOC_SET_FMT:
		return usrp_dma_ioc_set_fmt(dma, (struct usrp_fmt __user *)arg);
	default:
		return -ENOTTY;
	}

	return 0;
}

static int usrp_dma_core_fop_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct usrp_dma *dma = to_usrp_dma(file);

	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

	return vb2_mmap(&dma->queue, vma);
}

static unsigned int usrp_dma_core_fop_poll(struct file *file, poll_table * wait)
{
	struct usrp_dma *dma = to_usrp_dma(file);
	struct vb2_queue *q = &dma->queue;

	return vb2_core_poll(q, file, wait);
}

static ssize_t usrp_dma_core_fop_read(struct file *file, char *buf,
				      size_t count, loff_t * ppos)
{
	struct usrp_dma *dma = to_usrp_dma(file);
	struct vb2_queue *q = &dma->queue;
	int err = -EBUSY;

	if (!(q->io_modes & VB2_READ))
		return -EINVAL;
	if (q->lock && mutex_lock_interruptible(q->lock))
		return -ERESTARTSYS;
	if (q->owner && q->owner != file->private_data)
		goto exit;
	err = vb2_read(q, buf, count, ppos, file->f_flags & O_NONBLOCK);
	if (q->fileio)
		q->owner = file->private_data;
 exit:
	if (q->lock)
		mutex_unlock(q->lock);
	return err;
}

static ssize_t usrp_dma_core_fop_write(struct file *file, const char *buf,
				       size_t count, loff_t * ppos)
{
	struct usrp_dma *dma = to_usrp_dma(file);
	struct vb2_queue *q = &dma->queue;
	int err = -EBUSY;

	if (!(q->io_modes & VB2_WRITE))
		return -EINVAL;
	if (q->lock && mutex_lock_interruptible(q->lock))
		return -ERESTARTSYS;
	if (q->owner && q->owner != file->private_data)
		goto exit;
	err = vb2_write(q, buf, count, ppos, file->f_flags & O_NONBLOCK);
	if (q->fileio)
		q->owner = file->private_data;
 exit:
	if (q->lock)
		mutex_unlock(q->lock);
	return err;
}

const struct file_operations usrp_dma_core_fops = {
	.owner = THIS_MODULE,
	.open = usrp_dma_core_fop_open,
	.poll = usrp_dma_core_fop_poll,
	.mmap = usrp_dma_core_fop_mmap,
	.release = usrp_dma_core_fop_release,
	.unlocked_ioctl = usrp_dma_core_fop_ioctl,
	.read = usrp_dma_core_fop_read,
	.write = usrp_dma_core_fop_write,
};

EXPORT_SYMBOL_GPL(usrp_dma_core_fops);

static void usrp_dma_core_fill_user_buffer(struct vb2_buffer *vb, void *pb)
{
	struct usrp_buffer *b = pb;
	struct vb2_queue *q = vb->vb2_queue;

	b->index = vb->index;
	b->type = vb->type;
	b->memory = vb->memory;
	b->bytesused = 0;

	/*b->timestamp = ns_to_timeval(vb->timestamp); */
	b->reserved2 = 0;
	b->reserved = 0;

	/*
	 * We use length and offset in usrp_planes array even for
	 * single-planar buffers, but userspace does not.
	 */
	b->length = vb->planes[0].length;
	b->bytesused = vb->planes[0].bytesused;
	if (q->memory == VB2_MEMORY_MMAP)
		b->m.offset = vb->planes[0].m.offset;
	else if (q->memory == VB2_MEMORY_USERPTR)
		b->m.userptr = vb->planes[0].m.userptr;
	else if (q->memory == VB2_MEMORY_DMABUF)
		b->m.fd = vb->planes[0].m.fd;

	switch (vb->state) {
	case VB2_BUF_STATE_QUEUED:
	case VB2_BUF_STATE_ACTIVE:
		b->flags |= USRP_BUF_FLAG_QUEUED;
		break;
	case VB2_BUF_STATE_ERROR:
		b->flags |= USRP_BUF_FLAG_ERROR;
		/* fall through */
	case VB2_BUF_STATE_DONE:
		b->flags |= USRP_BUF_FLAG_DONE;
		break;
	case VB2_BUF_STATE_PREPARING:
		if (vb->prepared)
			b->flags |= USRP_BUF_FLAG_PREPARED;
		break;
	case VB2_BUF_STATE_DEQUEUED:
	case VB2_BUF_STATE_IN_REQUEST:
		/* nothing */
		break;
	}

	if (vb2_buffer_in_use(q, vb))
		b->flags |= USRP_BUF_FLAG_MAPPED;

	if (!q->is_output &&
	    b->flags & USRP_BUF_FLAG_DONE && b->flags & USRP_BUF_FLAG_LAST)
		q->last_buffer_dequeued = true;
}

static int usrp_dma_core_fill_vb2_buffer(struct vb2_buffer *vb, struct vb2_plane *planes)
{
	struct usrp_dma_buffer *vbuf = to_usrp_dma_buffer(vb);
	unsigned int plane;

	if (!vb->vb2_queue->copy_timestamp)
		vb->timestamp = 0;

	for (plane = 0; plane < vb->num_planes; ++plane) {
		if (vb->vb2_queue->memory != VB2_MEMORY_MMAP) {
			planes[plane].m = vbuf->planes[plane].m;
			planes[plane].length = vbuf->planes[plane].length;
		}
		planes[plane].bytesused = vbuf->planes[plane].bytesused;
		planes[plane].data_offset = vbuf->planes[plane].data_offset;
	}
	return 0;
}

static void usrp_dma_core_copy_timestamp(struct vb2_buffer *vb, const void *pb)
{
}

const struct vb2_buf_ops usrp_dma_core_buf_ops = {
	.fill_user_buffer = usrp_dma_core_fill_user_buffer,
	.fill_vb2_buffer = usrp_dma_core_fill_vb2_buffer,
	.copy_timestamp = usrp_dma_core_copy_timestamp,
};

int usrp_dma_register(struct usrp_dma *dma)
{
	int err;
	struct device *dev = dma->queue.dev;

	/* get a unique id for this one */
	if (USRP_TYPE_IS_OUTPUT(dma->queue.type)) {
		dma->id = ida_simple_get(&usrp_dma_tx_ida, 0, 0, GFP_KERNEL);
		snprintf(dma->name, USRP_DMA_MAX_NAME, "tx-dma%d", dma->id);
	} else {
		dma->id = ida_simple_get(&usrp_dma_rx_ida, 0, 0, GFP_KERNEL);
		snprintf(dma->name, USRP_DMA_MAX_NAME, "rx-dma%d", dma->id);
	}

	if (dma->id < 0) {
		dev_err(dev, "failed to get unique id");
		return dma->id;
	}

	dma->mdev.name = dma->name;
	dma->mdev.fops = &usrp_dma_core_fops;
	dma->mdev.minor = MISC_DYNAMIC_MINOR;
	dma->mdev.groups = usrp_dma_attr_groups;

	err = misc_register(&dma->mdev);
	if (err) {
		dev_err(dev, "failed to register misc device %s",
			dma->mdev.name);
		return err;
	}

	dev_set_drvdata(dma->mdev.this_device, dma);

	pr_info("usrp-dma-core: Registered %s\n", dma->name);

	return 0;
}

EXPORT_SYMBOL_GPL(usrp_dma_register);

void usrp_dma_deregister(struct usrp_dma *dma)
{
	misc_deregister(&dma->mdev);
	if (USRP_TYPE_IS_OUTPUT(dma->queue.type)) {
		ida_simple_remove(&usrp_dma_tx_ida, dma->id);
	} else {
		ida_simple_remove(&usrp_dma_rx_ida, dma->id);
	}

	pr_info("usrp-dma-core: Deregistered %s\n", dma->name);
}

EXPORT_SYMBOL_GPL(usrp_dma_deregister);

MODULE_AUTHOR("Moritz Fischer <moritz.fischer@ettus.com>");
MODULE_DESCRIPTION("USRP DMA Queue Core Functionality");
MODULE_LICENSE("GPL v2");
