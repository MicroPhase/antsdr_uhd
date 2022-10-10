/*
 * Copyright (C) 2017 National Instruments Corp
 *
 * SPDX-License-Identifier: GPL-2.0
 */

#include <linux/lcm.h>
#include <linux/list.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/dmaengine.h>
#include <linux/mutex.h>
#include <linux/spinlock.h>
#include <linux/miscdevice.h>
#include <linux/mfd/syscon.h>
#include <linux/regmap.h>
#include <linux/of.h>
#include <linux/of_device.h>

#include <media/videobuf2-dma-contig.h>
#include <media/videobuf2-dma-sg.h>

#include <linux/usrp.h>
#include <linux/usrp/usrp-dma.h>

extern const struct vb2_buf_ops usrp_dma_core_buf_ops;

#define USRP_DMA_BUF_SZ (2*PAGE_SIZE)

struct usrp_dmaengine_fmt {
	u32 type;
	u32 length;
};

struct usrp_dmaengine_priv {
	struct usrp_dma dma;

	enum dma_transfer_direction dir;

	struct dma_chan *chan;

	struct list_head queued_bufs;
	spinlock_t queued_lock;

	struct mutex lock;
	u32 port;

	struct regmap *regmap;
	u32 offset;

	struct usrp_dmaengine_fmt fmt;
};

static inline struct usrp_dmaengine_priv *to_usrp_dmaengine(const struct
							    usrp_dma *d)
{
	return container_of(d, struct usrp_dmaengine_priv, dma);
}

static void usrp_dmaengine_buffer_complete_cb(void *param)
{
	struct usrp_dma_buffer *buf = param;
	struct usrp_dma *dma = buf->dma;
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);

	spin_lock(&priv->queued_lock);
	list_del(&buf->queue);
	spin_unlock(&priv->queued_lock);

	if (priv->dir == DMA_DEV_TO_MEM)
		vb2_set_plane_payload(&buf->buf, 0, priv->fmt.length);

	vb2_buffer_done(&buf->buf, VB2_BUF_STATE_DONE);
}

static int usrp_dmaengine_queue_setup(struct vb2_queue *vq,
				      unsigned int *nbuffers,
				      unsigned int *nplanes,
				      unsigned int sizes[],
				      struct device *alloc_devs[])
{
	struct usrp_dma *dma = vb2_get_drv_priv(vq);
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);


	*nplanes = 1;
	if (priv->fmt.length > PAGE_SIZE)
		sizes[0] = PAGE_ALIGN(priv->fmt.length);
	else
		sizes[0] = PAGE_SIZE;

	pr_debug("%s: nbuffers=%u nplanes=%u sizes[0]=%u\n",
		 __func__, *nbuffers, *nplanes, sizes[0]);

	return 0;
}

static int usrp_dmaengine_buffer_prepare(struct vb2_buffer *vb)
{
	struct usrp_dma *dma = vb2_get_drv_priv(vb->vb2_queue);
	struct usrp_dma_buffer *buf = to_usrp_dma_buffer(vb);

	buf->dma = dma;

	return 0;
}

static void usrp_dmaengine_buffer_queue_contig(struct vb2_buffer *vb)
{
	struct usrp_dma_buffer *buf = to_usrp_dma_buffer(vb);
	struct usrp_dma *dma = vb2_get_drv_priv(vb->vb2_queue);
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);
	struct dma_chan *chan = priv->chan;
	struct dma_async_tx_descriptor *desc;
	dma_addr_t addr;
	dma_cookie_t cookie;

	addr = vb2_dma_contig_plane_dma_addr(vb, 0);
	desc = dmaengine_prep_slave_single(chan, addr,
					   priv->dir == DMA_MEM_TO_DEV ?
					   vb2_get_plane_payload(vb, 0)
					   : priv->fmt.length,
					   priv->dir,
					   DMA_PREP_INTERRUPT | DMA_CTRL_ACK);

	desc->callback = usrp_dmaengine_buffer_complete_cb;
	desc->callback_param = buf;

	spin_lock_irq(&priv->queued_lock);
	list_add_tail(&buf->queue, &priv->queued_bufs);
	spin_unlock_irq(&priv->queued_lock);

	cookie = dmaengine_submit(desc);
	if (dma_submit_error(cookie)) {
		vb2_buffer_done(&buf->buf, VB2_BUF_STATE_ERROR);
		pr_err("%s: failed to submit descriptor ...\n", __func__);
		return;
	}

	if (vb2_is_streaming(&dma->queue))
		dma_async_issue_pending(chan);
}

static void usrp_dmaengine_buffer_queue_sg(struct vb2_buffer *vb)
{
	struct usrp_dma_buffer *buf = to_usrp_dma_buffer(vb);
	struct usrp_dma *dma = vb2_get_drv_priv(vb->vb2_queue);
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);

	struct dma_chan *chan = priv->chan;
	struct dma_async_tx_descriptor *desc;
	struct sg_table *sgt;
	dma_cookie_t cookie;

	sgt = vb2_dma_sg_plane_desc(vb, 0);
	desc = dmaengine_prep_slave_sg(chan, sgt->sgl, sgt->nents,
				       priv->dir, DMA_PREP_INTERRUPT
				       | DMA_CTRL_ACK);

	desc->callback = usrp_dmaengine_buffer_complete_cb;
	desc->callback_param = buf;

	spin_lock_irq(&priv->queued_lock);
	list_add_tail(&buf->queue, &priv->queued_bufs);
	spin_unlock_irq(&priv->queued_lock);

	cookie = dmaengine_submit(desc);
	if (dma_submit_error(cookie)) {
		vb2_buffer_done(&buf->buf, VB2_BUF_STATE_ERROR);
		pr_err("%s: failed to submit descriptor ...\n", __func__);
		return;
	}

	if (vb2_is_streaming(&dma->queue))
		dma_async_issue_pending(chan);
}

static int usrp_dmaengine_start_streaming(struct vb2_queue *vq,
					  unsigned int count)
{
	struct usrp_dma *dma = vb2_get_drv_priv(vq);
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);
	struct dma_chan *chan = priv->chan;

	/* Start the DMA engine. This must be done before starting the blocks
	 * in the pipeline to avoid DMA synchronization issues.
	 */
	dma_async_issue_pending(chan);

	return 0;
}

static void usrp_dmaengine_stop_streaming(struct vb2_queue *vq)
{
	struct usrp_dma *dma = vb2_get_drv_priv(vq);
	struct usrp_dma_buffer *buf, *nbuf;
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);
	struct dma_chan *chan = priv->chan;

	/* Stop and reset the DMA engine. */
	dmaengine_terminate_async(chan);

	/* Give back all queued buffers to videobuf2. */
	spin_lock_irq(&priv->queued_lock);
	list_for_each_entry_safe(buf, nbuf, &priv->queued_bufs, queue) {
		vb2_buffer_done(&buf->buf, VB2_BUF_STATE_ERROR);
		list_del(&buf->queue);
	}
	spin_unlock_irq(&priv->queued_lock);

	vb2_wait_for_all_buffers(vq);
}

const struct vb2_ops usrp_dma_queue_contig_qops = {
	.queue_setup = usrp_dmaengine_queue_setup,
	.buf_prepare = usrp_dmaengine_buffer_prepare,
	.buf_queue = usrp_dmaengine_buffer_queue_contig,
	.wait_prepare = vb2_ops_wait_prepare,
	.wait_finish = vb2_ops_wait_finish,
	.start_streaming = usrp_dmaengine_start_streaming,
	.stop_streaming = usrp_dmaengine_stop_streaming,
};

EXPORT_SYMBOL_GPL(usrp_dma_queue_contig_qops);

const struct vb2_ops usrp_dma_queue_sg_qops = {
	.queue_setup = usrp_dmaengine_queue_setup,
	.buf_prepare = usrp_dmaengine_buffer_prepare,
	.buf_queue = usrp_dmaengine_buffer_queue_sg,
	.wait_prepare = vb2_ops_wait_prepare,
	.wait_finish = vb2_ops_wait_finish,
	.start_streaming = usrp_dmaengine_start_streaming,
	.stop_streaming = usrp_dmaengine_stop_streaming,
};

EXPORT_SYMBOL_GPL(usrp_dma_queue_sg_qops);

struct usrp_dmaengine_match_type {
	enum usrp_buf_type type;
	bool has_sg;
};

static const struct usrp_dmaengine_match_type tx_data = {
	.type = USRP_BUF_TYPE_OUTPUT,
	.has_sg = false,
};

static const struct usrp_dmaengine_match_type rx_data = {
	.type = USRP_BUF_TYPE_INPUT,
	.has_sg = false,
};

#ifdef CONFIG_OF
static const struct of_device_id usrp_dmaengine_of_match[] = {
	{.compatible = "ettus,usrp-tx-dma",.data = &tx_data},
	{.compatible = "ettus,usrp-rx-dma",.data = &rx_data},
	{},
};

MODULE_DEVICE_TABLE(of, usrp_dmaengine_of_match);
#endif

int usrp_dma_op_set_fmt(struct usrp_dma *dma, struct usrp_fmt *fmt)
{
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);

	if (!fmt->length || fmt->type != USRP_FMT_CHDR_FIXED_BLOCK) {
		pr_err("%s: fmt->length = %u\n", __func__, fmt->length);
		pr_err("%s: fmt->type = %u\n", __func__, fmt->type);
		return -EINVAL;
	}

	priv->fmt.length = fmt->length;
	priv->fmt.type = fmt->type;

	if (priv->dir == DMA_DEV_TO_MEM && priv->regmap)
		regmap_write(priv->regmap, priv->offset, priv->fmt.length >> 3);

	return 0;
}

static const struct usrp_dma_ops usrp_dmaengine_ops = {
	.set_fmt = usrp_dma_op_set_fmt,
};

static int usrp_dmaengine_probe(struct platform_device *pdev)
{
	const struct usrp_dmaengine_match_type *mdata;
	struct usrp_dmaengine_priv *priv;
	int err;

	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	dev_set_drvdata(&pdev->dev, priv);

	err = of_property_read_u32(pdev->dev.of_node, "port-id",
	                                      &priv->dma.port);
	if (err) {
		dev_err(&pdev->dev, "failed to assign port-id");
		return err;
	}

	priv->chan = dma_request_slave_channel(&pdev->dev, "dma");
	if (!priv->chan) {
		dev_err(&pdev->dev, "failed to request dma channel: %s", "dma");
		return -EPROBE_DEFER;
	}

	mdata = of_device_get_match_data(&pdev->dev);

	priv->dir = USRP_TYPE_IS_OUTPUT(mdata->type) ? DMA_MEM_TO_DEV :
	    DMA_DEV_TO_MEM;

	if (priv->dir == DMA_DEV_TO_MEM) {
		priv->regmap = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
							    "regmap");
		if (IS_ERR(priv->regmap)) {
			dev_err(&pdev->dev, "unable to get syscon");
			return PTR_ERR(priv->regmap);
		}

		if (of_property_read_u32(pdev->dev.of_node, "offset",
					 &priv->offset)) {
			dev_err(&pdev->dev, "unable to read 'offset'");
			return -EINVAL;
		}
	}
	priv->dma.ops = &usrp_dmaengine_ops;

	mutex_init(&priv->lock);
	INIT_LIST_HEAD(&priv->queued_bufs);
	spin_lock_init(&priv->queued_lock);

	/* we probably shouldn't allow for read() and write() based
	 * accesses, but meh, why not, if someone wants to go slow,
	 * let 'em */
	priv->dma.queue.buf_ops = &usrp_dma_core_buf_ops;
	priv->dma.queue.type = mdata->type;
	priv->dma.queue.is_output = USRP_TYPE_IS_OUTPUT(mdata->type);
	priv->dma.queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
	priv->dma.queue.io_modes |= VB2_READ | VB2_WRITE;
	priv->dma.queue.lock = &priv->lock;
	priv->dma.queue.drv_priv = &priv->dma;
	priv->dma.queue.buf_struct_size = sizeof(struct usrp_dma_buffer);
	priv->dma.queue.ops = mdata->has_sg ? &usrp_dma_queue_sg_qops :
	    &usrp_dma_queue_contig_qops;
	priv->dma.queue.dev = &pdev->dev;

	/* memorize if we can use sg, or not ... */
	if (mdata->has_sg)
		priv->dma.queue.mem_ops = &vb2_dma_sg_memops;
	else
		priv->dma.queue.mem_ops = &vb2_dma_contig_memops;

	err = vb2_core_queue_init(&priv->dma.queue);
	if (err < 0) {
		dev_err(&pdev->dev, "failed to initialize VB2 queue");
		return err;
	}

	return usrp_dma_register(&priv->dma);
}

static int usrp_dmaengine_remove(struct platform_device *pdev)
{
	struct usrp_dma *dma = dev_get_drvdata(&pdev->dev);
	struct usrp_dmaengine_priv *priv = to_usrp_dmaengine(dma);

	usrp_dma_deregister(dma);

	if (priv->chan)
		dma_release_channel(priv->chan);

	mutex_destroy(&priv->lock);

	return 0;
}

static struct platform_driver usrp_dmaengine_driver = {
	.probe = usrp_dmaengine_probe,
	.remove = usrp_dmaengine_remove,
	.driver = {
		.name = "usrp_dmaengine",
		.of_match_table = of_match_ptr(usrp_dmaengine_of_match),
	},
};

module_platform_driver(usrp_dmaengine_driver);

MODULE_AUTHOR("Moritz Fischer <moritz.fischer@ettus.com>");
MODULE_DESCRIPTION("USRP DMAEngine Queue");
MODULE_LICENSE("GPL v2");
