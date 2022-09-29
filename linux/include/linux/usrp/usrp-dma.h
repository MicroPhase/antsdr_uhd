/*
 * Copyright (C) 2017 National Instruments Corp
 *
 * SPDX-License-Identifier: GPL-2.0
 */

#ifndef USRP_DMA_H
#define USRP_DMA_H

#include <media/videobuf2-core.h>
#include <linux/miscdevice.h>

#define USRP_DMA_MAX_NAME 64

struct usrp_dma;
struct usrp_fmt;

struct usrp_dma_ops {
	int (*set_fmt)(struct usrp_dma *, struct usrp_fmt *);
};

struct usrp_dma {
	struct list_head list;

	struct vb2_queue queue;

	struct miscdevice mdev;

	char name[USRP_DMA_MAX_NAME];

	void *priv;
	int id;
	int port;

	const struct usrp_dma_ops *ops;
};

/**
 * struct usrp_dma_buffer - USRP DMA buffer
 * @buf: vb2 buffer base object
 * @queue: buffer list entry in the DMA engine queued buffer list
 * @dma: DMA channel that uses the buffer
 */
struct usrp_dma_buffer {
       struct vb2_buffer buf;
       struct list_head queue;
       struct usrp_dma *dma;
       struct vb2_plane	planes[VB2_MAX_PLANES];
};

static inline struct usrp_dma_buffer *to_usrp_dma_buffer(struct vb2_buffer *vb)
{
       return container_of(vb, struct usrp_dma_buffer, buf);
}

int usrp_dma_register(struct usrp_dma *dma);

void usrp_dma_deregister(struct usrp_dma *dma);

#endif /* USRP_DMA_H */
