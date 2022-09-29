/*
 * Copyright (C) 2017 National Instruments Corp
 *
 * SPDX-License-Identifier: GPL-2.0
 */

#ifndef USRP_H
#define USRP_H

enum usrp_buf_type {
       USRP_BUF_TYPE_INPUT  = 1,
       USRP_BUF_TYPE_OUTPUT = 2,
       USRP_BUF_TYPE_INPUT_MPLANE = 3,
       USRP_BUF_TYPE_OUTPUT_MPLANE = 4,
};

enum usrp_memory {
       USRP_MEMORY_MMAP        = 1,
       USRP_MEMORY_USERPTR     = 2,
       USRP_MEMORY_OVERLAY     = 3,
       USRP_MEMORY_DMABUF      = 4,
};

struct usrp_requestbuffers {
       __u32                   count;
       __u32                   type;           /* enum usrp_buf_type */
       __u32                   memory;         /* enum usrp_memory */
       __u32                   reserved[2];
};

static inline int USRP_TYPE_IS_OUTPUT(enum usrp_buf_type type)
{
	return type == USRP_BUF_TYPE_OUTPUT || type == USRP_BUF_TYPE_OUTPUT_MPLANE;
}

struct usrp_plane {
       __u32                   bytesused;
       __u32                   length;
       union {
               __u32           mem_offset;
               unsigned long   userptr;
               __s32           fd;
       } m;
       __u32                   data_offset;
       __u32                   reserved[11];
};

struct usrp_timecode {
       __u32   type;
       __u32   flags;
       __u8    frames;
       __u8    seconds;
       __u8    minutes;
       __u8    hours;
       __u8    userbits[4];
};


struct usrp_buffer {
       __u32                   index;
       __u32                   type;
       __u32                   bytesused;
       __u32                   flags;
       __u32                   field;
       struct timeval          timestamp;
       struct usrp_timecode    timecode;
       __u32                   sequence;

       /* memory location */
       __u32                   memory;
       union {
               __u32           offset;
               unsigned long   userptr;
               struct usrp_plane *planes;
               __s32           fd;
       } m;
       __u32                   length;
       __u32                   reserved2;
       __u32                   reserved;
};

/*  Flags for 'flags' field */
/* Buffer is mapped (flag) */
#define USRP_BUF_FLAG_MAPPED                   0x00000001
/* Buffer is queued for processing */
#define USRP_BUF_FLAG_QUEUED                   0x00000002
/* Buffer is ready */
#define USRP_BUF_FLAG_DONE                     0x00000004
/* Buffer is ready, but the data contained within is corrupted. */
#define USRP_BUF_FLAG_ERROR                    0x00000040
/* timecode field is valid */
#define USRP_BUF_FLAG_TIMECODE                 0x00000100
/* Buffer is prepared for queuing */
#define USRP_BUF_FLAG_PREPARED                 0x00000400
/* Cache handling flags */
#define USRP_BUF_FLAG_NO_CACHE_INVALIDATE      0x00000800
#define USRP_BUF_FLAG_NO_CACHE_CLEAN           0x00001000

/* Timestamp type */
#define USRP_BUF_FLAG_TIMESTAMP_MASK           0x0000e000
#define USRP_BUF_FLAG_TIMESTAMP_UNKNOWN                0x00000000
#define USRP_BUF_FLAG_TIMESTAMP_MONOTONIC      0x00002000
#define USRP_BUF_FLAG_TIMESTAMP_COPY           0x00004000
/* Timestamp sources. */
#define USRP_BUF_FLAG_TSTAMP_SRC_MASK          0x00070000
#define USRP_BUF_FLAG_TSTAMP_SRC_EOF           0x00000000
#define USRP_BUF_FLAG_TSTAMP_SRC_SOE           0x00010000
/* mem2mem encoder/decoder */
#define USRP_BUF_FLAG_LAST                     0x00100000


struct usrp_exportbuffer {
       __u32           type; /* enum usrp_buf_type */
       __u32           index;
       __u32           plane;
       __u32           flags;
       __s32           fd;
       __u32           reserved[11];
};

enum usrp_fmt_type {
	USRP_FMT_CHDR_FIXED_BLOCK = 0,
};

struct usrp_fmt {
	__u32		type;
	__u32		length;
	__u32		reserved[6];
};

#define USRPIOC_REQBUFS                _IOWR('V',  8, struct usrp_requestbuffers)
#define USRPIOC_QUERYBUF               _IOWR('V',  9, struct usrp_buffer)
#define USRPIOC_QBUF           _IOWR('V', 15, struct usrp_buffer)
#define USRPIOC_EXPBUF         _IOWR('V', 16, struct usrp_exportbuffer)
#define USRPIOC_DQBUF          _IOWR('V', 17, struct usrp_buffer)
#define USRPIOC_STREAMON                _IOW('V', 18, int)
#define USRPIOC_STREAMOFF       _IOW('V', 19, int)
#define USRPIOC_SET_FMT        _IOW('V',  20, struct usrp_fmt)

#endif /* USRP_H */
