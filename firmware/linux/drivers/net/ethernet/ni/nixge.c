// SPDX-License-Identifier: GPL-2.0
/* Copyright (c) 2016-2017, National Instruments Corp.
 *
 * Author: Moritz Fischer <mdf@kernel.org>
 */

#include <linux/etherdevice.h>
#include <linux/module.h>
#include <linux/netdevice.h>
#include <linux/of_address.h>
#include <linux/of_mdio.h>
#include <linux/of_net.h>
#include <linux/of_platform.h>
#include <linux/of_irq.h>
#include <linux/skbuff.h>
#include <linux/phy.h>
#include <linux/mii.h>
#include <linux/nvmem-consumer.h>
#include <linux/ethtool.h>
#include <linux/iopoll.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/device.h>
#include <linux/string.h>
#include <linux/workqueue.h>

#define TX_BD_NUM		64
#define RX_BD_NUM		512

/* Axi DMA Register definitions */
#define XAXIDMA_TX_CR_OFFSET	0x00 /* Channel control */
#define XAXIDMA_TX_SR_OFFSET	0x04 /* Status */
#define XAXIDMA_TX_CDESC_OFFSET	0x08 /* Current descriptor pointer */
#define XAXIDMA_TX_TDESC_OFFSET	0x10 /* Tail descriptor pointer */

#define XAXIDMA_RX_CR_OFFSET	0x30 /* Channel control */
#define XAXIDMA_RX_SR_OFFSET	0x34 /* Status */
#define XAXIDMA_RX_CDESC_OFFSET	0x38 /* Current descriptor pointer */
#define XAXIDMA_RX_TDESC_OFFSET	0x40 /* Tail descriptor pointer */

#define XAXIDMA_CR_RUNSTOP_MASK	0x1 /* Start/stop DMA channel */
#define XAXIDMA_CR_RESET_MASK	0x4 /* Reset DMA engine */

#define XAXIDMA_BD_CTRL_LENGTH_MASK	0x007FFFFF /* Requested len */
#define XAXIDMA_BD_CTRL_TXSOF_MASK	0x08000000 /* First tx packet */
#define XAXIDMA_BD_CTRL_TXEOF_MASK	0x04000000 /* Last tx packet */
#define XAXIDMA_BD_CTRL_ALL_MASK	0x0C000000 /* All control bits */

#define XAXIDMA_DELAY_MASK		0xFF000000 /* Delay timeout counter */
#define XAXIDMA_COALESCE_MASK		0x00FF0000 /* Coalesce counter */

#define XAXIDMA_DELAY_SHIFT		24
#define XAXIDMA_COALESCE_SHIFT		16

#define XAXIDMA_IRQ_IOC_MASK		0x00001000 /* Completion intr */
#define XAXIDMA_IRQ_DELAY_MASK		0x00002000 /* Delay interrupt */
#define XAXIDMA_IRQ_ERROR_MASK		0x00004000 /* Error interrupt */
#define XAXIDMA_IRQ_ALL_MASK		0x00007000 /* All interrupts */

/* Default TX/RX Threshold and waitbound values for SGDMA mode */
#define XAXIDMA_DFT_TX_THRESHOLD	24
#define XAXIDMA_DFT_TX_WAITBOUND	254
#define XAXIDMA_DFT_RX_THRESHOLD	24
#define XAXIDMA_DFT_RX_WAITBOUND	254

#define XAXIDMA_BD_STS_ACTUAL_LEN_MASK	0x007FFFFF /* Actual len */
#define XAXIDMA_BD_STS_COMPLETE_MASK	0x80000000 /* Completed */
#define XAXIDMA_BD_STS_DEC_ERR_MASK	0x40000000 /* Decode error */
#define XAXIDMA_BD_STS_SLV_ERR_MASK	0x20000000 /* Slave error */
#define XAXIDMA_BD_STS_INT_ERR_MASK	0x10000000 /* Internal err */
#define XAXIDMA_BD_STS_ALL_ERR_MASK	0x70000000 /* All errors */
#define XAXIDMA_BD_STS_RXSOF_MASK	0x08000000 /* First rx pkt */
#define XAXIDMA_BD_STS_RXEOF_MASK	0x04000000 /* Last rx pkt */
#define XAXIDMA_BD_STS_ALL_MASK		0xFC000000 /* All status bits */

#define NIXGE_REG_CTRL_OFFSET	0x4000
#define NIXGE_REG_INFO		0x00
#define NIXGE_REG_MAC_CTL	0x04
#define NIXGE_REG_PHY_CTL	0x08
#define NIXGE_REG_LED_CTL	0x0c
#define NIXGE_REG_MDIO_DATA	0x10
#define NIXGE_REG_MDIO_ADDR	0x14
#define NIXGE_REG_MDIO_OP	0x18
#define NIXGE_REG_MDIO_CTRL	0x1c
#define NIXGE_REG_RX_OVERRUNS	0x20
#define NIXGE_REG_RX_ERRORS	0x24
#define NIXGE_REG_PAUSE_TX	0x28
#define NIXGE_REG_PAUSE_RX	0x2c
#define NIXGE_REG_PAUSE_MAC_LSB	0x30
#define NIXGE_REG_PAUSE_MAC_MSB	0x34

#define NIXGE_MAC_CTL_TX_EN	BIT(0)
#define NIXGE_MAC_CTL_SPEED_SHIFT 1
#define NIXGE_MAC_CTL_SPEED_MASK	GENMASK(2, 1)
#define NIXGE_MAC_CTL_SPEED_10	(0 << NIXGE_MAC_CTL_SPEED_SHIFT)
#define NIXGE_MAC_CTL_SPEED_100	(1 << NIXGE_MAC_CTL_SPEED_SHIFT)
#define NIXGE_MAC_CTL_SPEED_1000	(2 << NIXGE_MAC_CTL_SPEED_SHIFT)
#define NIXGE_MAC_CTL_FULL_DUPLEX BIT(3)
#define NIXGE_MAC_CTL_PAUSE_SEND	BIT(4)
#define NIXGE_MAC_CTL_PAUSE_RESPECT BIT(5)
#define NIXGE_PHY_CTL_LINK_UP	BIT(0)

#define NIXGE_ID_LED_CTL_EN	BIT(0)
#define NIXGE_ID_LED_CTL_VAL	BIT(1)

#define NIXGE_MDIO_CLAUSE45	BIT(12)
#define NIXGE_MDIO_CLAUSE22	0
#define NIXGE_MDIO_OP(n)     (((n) & 0x3) << 10)
#define NIXGE_MDIO_OP_ADDRESS	0
#define NIXGE_MDIO_C45_WRITE	BIT(0)
#define NIXGE_MDIO_C45_READ	(BIT(1) | BIT(0))
#define NIXGE_MDIO_C22_WRITE	BIT(0)
#define NIXGE_MDIO_C22_READ	BIT(1)
#define NIXGE_MDIO_ADDR(n)   (((n) & 0x1f) << 5)
#define NIXGE_MDIO_MMD(n)    (((n) & 0x1f) << 0)

#define NIXGE_REG_MAC_LSB	0x1000
#define NIXGE_REG_MAC_MSB	0x1004

/* jcc */
#define NIXGE_REG_MAC_MASK 0x1008
#define NIXGE_IP_CTL	0x2000
/* Packet size info */
#define NIXGE_HDR_SIZE		14 /* Size of Ethernet header */
#define NIXGE_TRL_SIZE		4 /* Size of Ethernet trailer (FCS) */
#define NIXGE_MTU		1500 /* Max MTU of an Ethernet frame */
#define NIXGE_JUMBO_MTU		9000 /* Max MTU of a jumbo Eth. frame */

#define NIXGE_MAX_FRAME_SIZE	 (NIXGE_MTU + NIXGE_HDR_SIZE + NIXGE_TRL_SIZE)
#define NIXGE_RX_BUF_SIZE	 2048
#define NIXGE_MAX_JUMBO_FRAME_SIZE \
	(NIXGE_JUMBO_MTU + NIXGE_HDR_SIZE + NIXGE_TRL_SIZE)

enum nixge_version {
	NIXGE_V2,
	NIXGE_V3,
	NIXGE_VERSION_COUNT
};

struct nixge_hw_dma_bd {
	u32 next_lo;
	u32 next_hi;
	u32 phys_lo;
	u32 phys_hi;
	u32 reserved3;
	u32 reserved4;
	u32 cntrl;
	u32 status;
	u32 app0;
	u32 app1;
	u32 app2;
	u32 app3;
	u32 app4;
	u32 sw_id_offset_lo;
	u32 sw_id_offset_hi;
	u32 reserved6;
};

#ifdef CONFIG_PHYS_ADDR_T_64BIT
#define nixge_hw_dma_bd_set_addr(bd, field, addr) \
	do { \
		(bd)->field##_lo = lower_32_bits((addr)); \
		(bd)->field##_hi = upper_32_bits((addr)); \
	} while (0)
#else
#define nixge_hw_dma_bd_set_addr(bd, field, addr) \
	((bd)->field##_lo = lower_32_bits((addr)))
#endif

#define nixge_hw_dma_bd_set_phys(bd, addr) \
	nixge_hw_dma_bd_set_addr((bd), phys, (addr))

#define nixge_hw_dma_bd_set_next(bd, addr) \
	nixge_hw_dma_bd_set_addr((bd), next, (addr))

#define nixge_hw_dma_bd_set_offset(bd, addr) \
	nixge_hw_dma_bd_set_addr((bd), sw_id_offset, (addr))

#ifdef CONFIG_PHYS_ADDR_T_64BIT
#define nixge_hw_dma_bd_get_addr(bd, field) \
	(dma_addr_t)((((u64)(bd)->field##_hi) << 32) | ((bd)->field##_lo))
#else
#define nixge_hw_dma_bd_get_addr(bd, field) \
	(dma_addr_t)((bd)->field##_lo)
#endif

struct nixge_tx_skb {
	struct sk_buff *skb;
	dma_addr_t mapping;
	size_t size;
	bool mapped_as_page;
};

struct nixge_priv {
	struct net_device *ndev;
	struct napi_struct napi;
	struct device *dev;

	/* Connection to PHY device */
	struct device_node *phy_node;
	phy_interface_t		phy_mode;

	int link;
	unsigned int speed;
	unsigned int duplex;
	bool pause_rx;
	bool pause_tx;

	/* MDIO bus data */
	struct mii_bus *mii_bus;	/* MII bus reference */

	/* IO registers, dma functions and IRQs */
	void __iomem *ctrl_regs;
	void __iomem *dma_regs;

	struct work_struct dma_err_work;
	atomic_t dma_err_pending;
	spinlock_t tx_lock;

	int tx_irq;
	int rx_irq;

	/* Buffer descriptors */
	struct nixge_hw_dma_bd *tx_bd_v;
	struct nixge_tx_skb *tx_skb;
	dma_addr_t tx_bd_p;

	struct nixge_hw_dma_bd *rx_bd_v;
	dma_addr_t rx_bd_p;
	u32 tx_bd_ci;
	u32 tx_bd_tail;
	u32 tx_bd_used;
	u32 rx_bd_ci;

	u32 coalesce_count_rx;
	u32 coalesce_count_tx;
	u32 dma_rx_errors;
	u32 dma_tx_errors;
	u32 rx_alloc_fail;

	int is_fixed_link;
};

static unsigned int major; /* major number for device */
static struct class *dummy_class;
static struct cdev dummy_cdev;
struct net_device *ndev_chr;

static void nixge_dma_write_reg(struct nixge_priv *priv, off_t offset, u32 val)
{
	writel(val, priv->dma_regs + offset);
}

static void nixge_dma_write_desc_reg(struct nixge_priv *priv, off_t offset,
				     dma_addr_t addr)
{
	writel(lower_32_bits(addr), priv->dma_regs + offset);
#ifdef CONFIG_PHYS_ADDR_T_64BIT
	writel(upper_32_bits(addr), priv->dma_regs + offset + 4);
#endif
}

static u32 nixge_dma_read_reg(const struct nixge_priv *priv, off_t offset)
{
	return readl(priv->dma_regs + offset);
}

static void nixge_ctrl_write_reg(struct nixge_priv *priv, off_t offset, u32 val)
{
	writel(val, priv->ctrl_regs + offset);
}

static u32 nixge_ctrl_read_reg(struct nixge_priv *priv, off_t offset)
{
	return readl(priv->ctrl_regs + offset);
}

#define nixge_ctrl_poll_timeout(priv, addr, val, cond, sleep_us, timeout_us) \
	readl_poll_timeout((priv)->ctrl_regs + (addr), (val), (cond), \
			   (sleep_us), (timeout_us))

#define nixge_dma_poll_timeout(priv, addr, val, cond, sleep_us, timeout_us) \
	readl_poll_timeout((priv)->dma_regs + (addr), (val), (cond), \
			   (sleep_us), (timeout_us))

static void nixge_tx_skb_unmap(struct nixge_priv *priv,
			       struct nixge_tx_skb *tx_skb);

static void nixge_hw_dma_bd_release(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	dma_addr_t phys_addr;
	struct sk_buff *skb;
	int i;

	if (priv->rx_bd_v) {
		for (i = 0; i < RX_BD_NUM; i++) {
			skb = (struct sk_buff *)(uintptr_t)
				nixge_hw_dma_bd_get_addr(&priv->rx_bd_v[i],
							 sw_id_offset);
			if (!skb)
				continue;

			phys_addr = nixge_hw_dma_bd_get_addr(&priv->rx_bd_v[i],
							     phys);
			dma_unmap_single(ndev->dev.parent, phys_addr,
					 NIXGE_RX_BUF_SIZE,
					 DMA_FROM_DEVICE);
			dev_kfree_skb(skb);
		}
	}

	if (priv->rx_bd_v)
		dma_free_coherent(ndev->dev.parent,
				  sizeof(*priv->rx_bd_v) * RX_BD_NUM,
				  priv->rx_bd_v,
				  priv->rx_bd_p);

	if (priv->tx_skb) {
		for (i = 0; i < TX_BD_NUM; i++)
			nixge_tx_skb_unmap(priv, &priv->tx_skb[i]);
		devm_kfree(ndev->dev.parent, priv->tx_skb);
	}

	if (priv->tx_bd_v)
		dma_free_coherent(ndev->dev.parent,
				  sizeof(*priv->tx_bd_v) * TX_BD_NUM,
				  priv->tx_bd_v,
				  priv->tx_bd_p);

	priv->rx_bd_v = NULL;
	priv->tx_skb = NULL;
	priv->tx_bd_v = NULL;
	priv->rx_bd_p = 0;
	priv->tx_bd_p = 0;
	priv->tx_bd_used = 0;
}

static int nixge_hw_dma_bd_init(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct sk_buff *skb;
	dma_addr_t phys;
	u32 cr;
	int i;

	/* Reset the indexes which are used for accessing the BDs */
	priv->tx_bd_ci = 0;
	priv->tx_bd_tail = 0;
	priv->tx_bd_used = 0;
	priv->rx_bd_ci = 0;

	/* Allocate the Tx and Rx buffer descriptors. */
	// Refer to descriptors srtuct for more information
	// the priv->tx_bd_v is virtual address, priv->txbd_p is physical address
	priv->tx_bd_v = dma_alloc_coherent(ndev->dev.parent,
					   sizeof(*priv->tx_bd_v) * TX_BD_NUM,
					   &priv->tx_bd_p, GFP_KERNEL);
	if (!priv->tx_bd_v)
		goto out;
	memset(priv->tx_bd_v, 0,
	       sizeof(*priv->tx_bd_v) * TX_BD_NUM);
	/* alloc buffer pointer */
	priv->tx_skb = devm_kcalloc(ndev->dev.parent,
				    TX_BD_NUM, sizeof(*priv->tx_skb),
				    GFP_KERNEL);
	if (!priv->tx_skb)
		goto out;

	priv->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
					   sizeof(*priv->rx_bd_v) * RX_BD_NUM,
					   &priv->rx_bd_p, GFP_KERNEL);
	if (!priv->rx_bd_v)
		goto out;
	memset(priv->rx_bd_v, 0,
	       sizeof(*priv->rx_bd_v) * RX_BD_NUM);

	for (i = 0; i < TX_BD_NUM; i++) {
		// descriptor chain, one point to another
		nixge_hw_dma_bd_set_next(&priv->tx_bd_v[i],
					 priv->tx_bd_p +
					 sizeof(*priv->tx_bd_v) *
					 ((i + 1) % TX_BD_NUM));
	}

	for (i = 0; i < RX_BD_NUM; i++) {
		// descriptor chain, one point to another
		nixge_hw_dma_bd_set_next(&priv->rx_bd_v[i],
					 priv->rx_bd_p
					 + sizeof(*priv->rx_bd_v) *
					 ((i + 1) % RX_BD_NUM));

		skb = netdev_alloc_skb_ip_align(ndev, NIXGE_RX_BUF_SIZE);
		if (!skb)
			goto out;

		phys = dma_map_single(ndev->dev.parent, skb->data,
				      NIXGE_RX_BUF_SIZE,
				      DMA_FROM_DEVICE);
		if (dma_mapping_error(ndev->dev.parent, phys)) {
			dev_kfree_skb(skb);
			goto out;
		}

		nixge_hw_dma_bd_set_offset(&priv->rx_bd_v[i],
					       (uintptr_t)skb);
		nixge_hw_dma_bd_set_phys(&priv->rx_bd_v[i], phys);

		priv->rx_bd_v[i].cntrl = NIXGE_RX_BUF_SIZE;
	}

	/* Start updating the Rx channel control register */
	cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
	      ((priv->coalesce_count_rx) << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = ((cr & ~XAXIDMA_DELAY_MASK) |
	      (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Write to the Rx channel control register */
	nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET, cr);

	/* Start updating the Tx channel control register */
	cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
	      ((priv->coalesce_count_tx) << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = (((cr & ~XAXIDMA_DELAY_MASK)) |
	      (XAXIDMA_DFT_TX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Write to the Tx channel control register */
	nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET, cr);

	/* Populate the tail pointer and bring the Rx Axi DMA engine out of
	 * halted state. This will make the Rx side ready for reception.
	 */
	nixge_dma_write_desc_reg(priv, XAXIDMA_RX_CDESC_OFFSET, priv->rx_bd_p);
	cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);
	dma_wmb();
	nixge_dma_write_desc_reg(priv, XAXIDMA_RX_TDESC_OFFSET, priv->rx_bd_p +
			    (sizeof(*priv->rx_bd_v) * (RX_BD_NUM - 1)));

	/* Write to the RS (Run-stop) bit in the Tx channel control register.
	 * Tx channel is now ready to run. But only after we write to the
	 * tail pointer register that the Tx channel will start transmitting.
	 */
	nixge_dma_write_desc_reg(priv, XAXIDMA_TX_CDESC_OFFSET, priv->tx_bd_p);
	cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);

	return 0;
out:
	nixge_hw_dma_bd_release(ndev);
	return -ENOMEM;
}

static void __nixge_device_reset(struct nixge_priv *priv, off_t offset)
{
	u32 status;
	int err = 0;

	/* Reset Axi DMA. This would reset NIXGE Ethernet core as well.
	 * The reset process of Axi DMA takes a while to complete as all
	 * pending commands/transfers will be flushed or completed during
	 * this reset process.
	 */
	nixge_dma_write_reg(priv, offset, XAXIDMA_CR_RESET_MASK);
	err = nixge_dma_poll_timeout(priv, offset, status,
				     !(status & XAXIDMA_CR_RESET_MASK), 10,
				     1000);
	if (err)
		netdev_err(priv->ndev, "%s: DMA reset timeout!\n", __func__);
}

static int nixge_device_reset(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	int ret;

	// write axi dma control register 
	__nixge_device_reset(priv, XAXIDMA_TX_CR_OFFSET);
	__nixge_device_reset(priv, XAXIDMA_RX_CR_OFFSET);

	// init the dma descriptor, make rx sg starts to work
	ret = nixge_hw_dma_bd_init(ndev);
	if (ret) {
		netdev_err(ndev, "%s: descriptor allocation failed\n",
			   __func__);
		return ret;
	}

	netif_trans_update(ndev);
	return 0;
}

static u32 nixge_mac_link_control(struct phy_device *phydev,
				  bool *pause_rx, bool *pause_tx)
{
	bool local_pause;
	u32 ctrl = NIXGE_MAC_CTL_TX_EN;

	switch (phydev->speed) {
	case SPEED_10:
		ctrl |= NIXGE_MAC_CTL_SPEED_10;
		break;
	case SPEED_100:
		ctrl |= NIXGE_MAC_CTL_SPEED_100;
		break;
	case SPEED_1000:
	default:
		ctrl |= NIXGE_MAC_CTL_SPEED_1000;
		break;
	}

	if (phydev->duplex == DUPLEX_FULL)
		ctrl |= NIXGE_MAC_CTL_FULL_DUPLEX;

	/* This MAC advertises symmetric pause only.  phydev->pause describes
	 * the link partner's Pause advertisement, so flow control is enabled
	 * in both directions only when both ends advertised Pause.  In
	 * particular, a partner advertising Asym_Pause alone must not enable
	 * TX pause here.
	 */
	local_pause = linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
					phydev->advertising);
	*pause_rx = phydev->autoneg == AUTONEG_ENABLE &&
		    local_pause && phydev->pause;
	*pause_tx = *pause_rx;
	if (*pause_tx)
		ctrl |= NIXGE_MAC_CTL_PAUSE_SEND;
	if (*pause_rx)
		ctrl |= NIXGE_MAC_CTL_PAUSE_RESPECT;

	return ctrl;
}

static void nixge_handle_link_change(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct phy_device *phydev = ndev->phydev;
	bool pause_rx = false, pause_tx = false;
	u32 mac_ctrl;

	if (!phydev->link) {
		/* Drop link first so the FPGA flushes traffic before changing the
		 * clock mux.  Return to the independent 125 MHz clock while down.
		 */
		nixge_ctrl_write_reg(priv, NIXGE_REG_PHY_CTL, 0);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_CTL,
				     NIXGE_MAC_CTL_TX_EN |
				     NIXGE_MAC_CTL_SPEED_1000 |
				     NIXGE_MAC_CTL_FULL_DUPLEX);
	} else {
		mac_ctrl = nixge_mac_link_control(phydev, &pause_rx, &pause_tx);
		/* Program speed and flow control before releasing the FPGA link. */
		nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_CTL, mac_ctrl);
		nixge_ctrl_write_reg(priv, NIXGE_REG_PHY_CTL,
				     NIXGE_PHY_CTL_LINK_UP);
	}

	if (phydev->link != priv->link || phydev->speed != priv->speed ||
	    phydev->duplex != priv->duplex || pause_rx != priv->pause_rx ||
	    pause_tx != priv->pause_tx) {
		priv->link = phydev->link;
		priv->speed = phydev->speed;
		priv->duplex = phydev->duplex;
		priv->pause_rx = pause_rx;
		priv->pause_tx = pause_tx;
		phy_print_status(phydev);
	}

	if (phydev->link)
		netif_carrier_on(ndev);
	else
		netif_carrier_off(ndev);
}

static void nixge_tx_skb_unmap(struct nixge_priv *priv,
			       struct nixge_tx_skb *tx_skb)
{
	if (tx_skb->mapping) {
		if (tx_skb->mapped_as_page)
			dma_unmap_page(priv->ndev->dev.parent, tx_skb->mapping,
				       tx_skb->size, DMA_TO_DEVICE);
		else
			dma_unmap_single(priv->ndev->dev.parent,
					 tx_skb->mapping,
					 tx_skb->size, DMA_TO_DEVICE);
		tx_skb->mapping = 0;
	}

	if (tx_skb->skb) {
		dev_kfree_skb_any(tx_skb->skb);
		tx_skb->skb = NULL;
	}
}

static void nixge_start_xmit_done(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct nixge_hw_dma_bd *cur_p;
	struct nixge_tx_skb *tx_skb;
	unsigned int status;
	unsigned long flags;
	u32 packets = 0;
	u32 size = 0;

	spin_lock_irqsave(&priv->tx_lock, flags);
	cur_p = &priv->tx_bd_v[priv->tx_bd_ci];
	tx_skb = &priv->tx_skb[priv->tx_bd_ci];

	status = READ_ONCE(cur_p->status);

	while (priv->tx_bd_used &&
	       (status & XAXIDMA_BD_STS_COMPLETE_MASK)) {
		dma_rmb();
		nixge_tx_skb_unmap(priv, tx_skb);

		size += status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
		packets++;
		cur_p->cntrl = 0;
		WRITE_ONCE(cur_p->status, 0);
		priv->tx_bd_used--;

		++priv->tx_bd_ci;
		priv->tx_bd_ci %= TX_BD_NUM;
		cur_p = &priv->tx_bd_v[priv->tx_bd_ci];
		tx_skb = &priv->tx_skb[priv->tx_bd_ci];
		status = READ_ONCE(cur_p->status);
	}
	spin_unlock_irqrestore(&priv->tx_lock, flags);

	ndev->stats.tx_packets += packets;
	ndev->stats.tx_bytes += size;

	if (packets)
		netif_wake_queue(ndev);
}

static int nixge_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct nixge_hw_dma_bd *cur_p;
	struct nixge_tx_skb *tx_skb;
	dma_addr_t tail_p, cur_phys;
	unsigned long flags;

	if (skb_is_nonlinear(skb) && skb_linearize(skb))
		goto drop;

	spin_lock_irqsave(&priv->tx_lock, flags);
	if (priv->tx_bd_used >= TX_BD_NUM - 1) {
		netif_stop_queue(ndev);
		spin_unlock_irqrestore(&priv->tx_lock, flags);
		return NETDEV_TX_BUSY;
	}

	cur_p = &priv->tx_bd_v[priv->tx_bd_tail];
	tx_skb = &priv->tx_skb[priv->tx_bd_tail];

	cur_phys = dma_map_single(ndev->dev.parent, skb->data,
				  skb->len, DMA_TO_DEVICE);
	if (dma_mapping_error(ndev->dev.parent, cur_phys))
		goto drop_unlock;
	nixge_hw_dma_bd_set_phys(cur_p, cur_phys);

	cur_p->cntrl = skb->len | XAXIDMA_BD_CTRL_TXSOF_MASK |
			 XAXIDMA_BD_CTRL_TXEOF_MASK;
	WRITE_ONCE(cur_p->status, 0);

	tx_skb->skb = skb;
	tx_skb->mapping = cur_phys;
	tx_skb->size = skb->len;
	tx_skb->mapped_as_page = false;

	tail_p = priv->tx_bd_p + sizeof(*priv->tx_bd_v) * priv->tx_bd_tail;
	++priv->tx_bd_tail;
	priv->tx_bd_tail %= TX_BD_NUM;
	priv->tx_bd_used++;

	dma_wmb();
	nixge_dma_write_desc_reg(priv, XAXIDMA_TX_TDESC_OFFSET, tail_p);
	if (priv->tx_bd_used >= TX_BD_NUM - 1)
		netif_stop_queue(ndev);
	spin_unlock_irqrestore(&priv->tx_lock, flags);

	return NETDEV_TX_OK;
drop_unlock:
	spin_unlock_irqrestore(&priv->tx_lock, flags);
drop:
	dev_kfree_skb_any(skb);
	ndev->stats.tx_dropped++;
	return NETDEV_TX_OK;
}

static int nixge_recv(struct net_device *ndev, int budget)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct sk_buff *dma_skb, *skb;
	struct nixge_hw_dma_bd *cur_p;
	dma_addr_t tail_p = 0, dma_phys;
	u32 status;
	u32 packets = 0;
	u32 received = 0;
	u32 length;
	u32 size = 0;

	cur_p = &priv->rx_bd_v[priv->rx_bd_ci];
	status = READ_ONCE(cur_p->status);

	while ((status & XAXIDMA_BD_STS_COMPLETE_MASK) &&
	       budget > packets) {
		dma_rmb();
		tail_p = priv->rx_bd_p + sizeof(*priv->rx_bd_v) *
			 priv->rx_bd_ci;

		length = status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
		if (length > NIXGE_RX_BUF_SIZE)
			length = NIXGE_RX_BUF_SIZE;

		/* Keep a permanently mapped DMA buffer behind every descriptor.
		 * Copying a normal-size frame is substantially cheaper on Zynq-7000
		 * than allocating and mapping a 9 KiB replacement for every packet,
		 * and it prevents descriptor starvation under sustained RX load.
		 */
		dma_skb = (struct sk_buff *)(uintptr_t)
			nixge_hw_dma_bd_get_addr(cur_p, sw_id_offset);
		dma_phys = nixge_hw_dma_bd_get_addr(cur_p, phys);
		skb = napi_alloc_skb(&priv->napi, length);
		if (!skb) {
			priv->rx_alloc_fail++;
			ndev->stats.rx_dropped++;
			goto recycle_buffer;
		}

		dma_sync_single_for_cpu(ndev->dev.parent, dma_phys,
					NIXGE_RX_BUF_SIZE, DMA_FROM_DEVICE);
		memcpy(skb_put(skb, length), dma_skb->data, length);
		dma_sync_single_for_device(ndev->dev.parent, dma_phys,
					   NIXGE_RX_BUF_SIZE, DMA_FROM_DEVICE);
		skb->protocol = eth_type_trans(skb, ndev);
		skb_checksum_none_assert(skb);
		skb->ip_summed = CHECKSUM_NONE;
		napi_gro_receive(&priv->napi, skb);
		size += length;
		received++;
		goto rearm_descriptor;

recycle_buffer:
		dma_sync_single_for_device(ndev->dev.parent, dma_phys,
					   NIXGE_RX_BUF_SIZE, DMA_FROM_DEVICE);
rearm_descriptor:
		cur_p->cntrl = NIXGE_RX_BUF_SIZE;
		WRITE_ONCE(cur_p->status, 0);

		packets++;
		++priv->rx_bd_ci;
		priv->rx_bd_ci %= RX_BD_NUM;
		cur_p = &priv->rx_bd_v[priv->rx_bd_ci];
		status = READ_ONCE(cur_p->status);
	}

	ndev->stats.rx_packets += received;
	ndev->stats.rx_bytes += size;

	if (tail_p) {
		dma_wmb();
		nixge_dma_write_desc_reg(priv, XAXIDMA_RX_TDESC_OFFSET, tail_p);
	}

	return packets;
}

static void nixge_schedule_dma_recovery(struct nixge_priv *priv)
{
	u32 cr;

	netif_stop_queue(priv->ndev);

	cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	cr &= ~XAXIDMA_IRQ_ALL_MASK;
	nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET, cr);

	cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	cr &= ~XAXIDMA_IRQ_ALL_MASK;
	nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET, cr);

	if (atomic_cmpxchg(&priv->dma_err_pending, 0, 1) == 0)
		schedule_work(&priv->dma_err_work);
}

static int nixge_poll(struct napi_struct *napi, int budget)
{
	struct nixge_priv *priv = container_of(napi, struct nixge_priv, napi);
	int work_done;
	u32 status, cr;

	work_done = 0;

	work_done = nixge_recv(priv->ndev, budget);
	if (work_done < budget) {
		napi_complete_done(napi, work_done);
		status = nixge_dma_read_reg(priv, XAXIDMA_RX_SR_OFFSET);

		if (status & XAXIDMA_IRQ_ERROR_MASK) {
			priv->dma_rx_errors++;
			netdev_err(priv->ndev, "DMA Rx error 0x%x in NAPI\n",
				   status);
			nixge_dma_write_reg(priv, XAXIDMA_RX_SR_OFFSET,
					    status & XAXIDMA_IRQ_ALL_MASK);
			nixge_schedule_dma_recovery(priv);
			return work_done;
		}

		if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
			/* If there's more, reschedule, but clear */
			nixge_dma_write_reg(priv, XAXIDMA_RX_SR_OFFSET,
					    status & (XAXIDMA_IRQ_IOC_MASK |
						      XAXIDMA_IRQ_DELAY_MASK));
			napi_reschedule(napi);
		} else {
			/* if not, turn on RX IRQs again ... */
			cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
			cr |= (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK);
			nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET, cr);
		}
	}

	return work_done;
}

static irqreturn_t nixge_tx_irq(int irq, void *_ndev)
{
	struct nixge_priv *priv = netdev_priv(_ndev);
	struct net_device *ndev = _ndev;
	unsigned int status;
	dma_addr_t phys;

	// read axidma mm2s status register
	status = nixge_dma_read_reg(priv, XAXIDMA_TX_SR_OFFSET);
	if (!(status & XAXIDMA_IRQ_ALL_MASK)) {
		netdev_err(ndev, "No interrupts asserted in Tx path\n");
		return IRQ_NONE;
	}
	if (status & XAXIDMA_IRQ_ERROR_MASK) {
		priv->dma_tx_errors++;
		phys = nixge_hw_dma_bd_get_addr(&priv->tx_bd_v[priv->tx_bd_ci],
						phys);

		netdev_err(ndev, "DMA Tx error 0x%x\n", status);
		netdev_err(ndev, "Current BD is at: 0x%llx\n", (u64)phys);

		nixge_dma_write_reg(priv, XAXIDMA_TX_SR_OFFSET,
				    status & XAXIDMA_IRQ_ALL_MASK);
		nixge_schedule_dma_recovery(priv);
		goto out;
	}
	if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
		nixge_dma_write_reg(priv, XAXIDMA_TX_SR_OFFSET,
				    status & (XAXIDMA_IRQ_IOC_MASK |
					      XAXIDMA_IRQ_DELAY_MASK));
		nixge_start_xmit_done(priv->ndev);
	}
out:
	return IRQ_HANDLED;
}

static irqreturn_t nixge_rx_irq(int irq, void *_ndev)
{
	struct nixge_priv *priv = netdev_priv(_ndev);
	struct net_device *ndev = _ndev;
	unsigned int status;
	dma_addr_t phys;
	u32 cr;

	status = nixge_dma_read_reg(priv, XAXIDMA_RX_SR_OFFSET);
	if (!(status & XAXIDMA_IRQ_ALL_MASK)) {
		netdev_err(ndev, "No interrupts asserted in Rx path\n");
		return IRQ_NONE;
	}
	if (status & XAXIDMA_IRQ_ERROR_MASK) {
		priv->dma_rx_errors++;
		phys = nixge_hw_dma_bd_get_addr(&priv->rx_bd_v[priv->rx_bd_ci],
						phys);
		netdev_err(ndev, "DMA Rx error 0x%x\n", status);
		netdev_err(ndev, "Current BD is at: 0x%llx\n", (u64)phys);

		nixge_dma_write_reg(priv, XAXIDMA_RX_SR_OFFSET,
				    status & XAXIDMA_IRQ_ALL_MASK);
		nixge_schedule_dma_recovery(priv);
		goto out;
	}
	if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
		/* Turn off completion IRQs while NAPI owns the RX ring. */
		nixge_dma_write_reg(priv, XAXIDMA_RX_SR_OFFSET,
				    status & (XAXIDMA_IRQ_IOC_MASK |
					      XAXIDMA_IRQ_DELAY_MASK));
		cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
		cr &= ~(XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK);
		nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET, cr);

		if (napi_schedule_prep(&priv->napi))
			__napi_schedule(&priv->napi);
	}
out:
	return IRQ_HANDLED;
}

static void nixge_dma_err_handler(struct work_struct *work)
{
	struct nixge_priv *lp = container_of(work, struct nixge_priv,
					     dma_err_work);
	struct nixge_hw_dma_bd *cur_p;
	struct nixge_tx_skb *tx_skb;
	unsigned long flags;
	u32 cr, i;

	/* Process context lets us quiesce NAPI and both IRQ handlers before
	 * rebuilding the DMA state. A tasklet cannot safely do this.
	 */
	napi_disable(&lp->napi);
	synchronize_irq(lp->tx_irq);
	synchronize_irq(lp->rx_irq);
	spin_lock_irqsave(&lp->tx_lock, flags);

	__nixge_device_reset(lp, XAXIDMA_TX_CR_OFFSET);
	__nixge_device_reset(lp, XAXIDMA_RX_CR_OFFSET);

	for (i = 0; i < TX_BD_NUM; i++) {
		cur_p = &lp->tx_bd_v[i];
		tx_skb = &lp->tx_skb[i];
		nixge_tx_skb_unmap(lp, tx_skb);

		nixge_hw_dma_bd_set_phys(cur_p, 0);
		cur_p->cntrl = 0;
		cur_p->status = 0;
		nixge_hw_dma_bd_set_offset(cur_p, 0);
	}

	for (i = 0; i < RX_BD_NUM; i++) {
		cur_p = &lp->rx_bd_v[i];
		cur_p->status = 0;
	}

	lp->tx_bd_ci = 0;
	lp->tx_bd_tail = 0;
	lp->tx_bd_used = 0;
	lp->rx_bd_ci = 0;

	/* Start updating the Rx channel control register */
	cr = nixge_dma_read_reg(lp, XAXIDMA_RX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
	      (XAXIDMA_DFT_RX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = ((cr & ~XAXIDMA_DELAY_MASK) |
	      (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Finally write to the Rx channel control register */
	nixge_dma_write_reg(lp, XAXIDMA_RX_CR_OFFSET, cr);

	/* Start updating the Tx channel control register */
	cr = nixge_dma_read_reg(lp, XAXIDMA_TX_CR_OFFSET);
	/* Update the interrupt coalesce count */
	cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
	      (XAXIDMA_DFT_TX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));
	/* Update the delay timer count */
	cr = (((cr & ~XAXIDMA_DELAY_MASK)) |
	      (XAXIDMA_DFT_TX_WAITBOUND << XAXIDMA_DELAY_SHIFT));
	/* Enable coalesce, delay timer and error interrupts */
	cr |= XAXIDMA_IRQ_ALL_MASK;
	/* Finally write to the Tx channel control register */
	nixge_dma_write_reg(lp, XAXIDMA_TX_CR_OFFSET, cr);

	/* Populate the tail pointer and bring the Rx Axi DMA engine out of
	 * halted state. This will make the Rx side ready for reception.
	 */
	nixge_dma_write_desc_reg(lp, XAXIDMA_RX_CDESC_OFFSET, lp->rx_bd_p);
	cr = nixge_dma_read_reg(lp, XAXIDMA_RX_CR_OFFSET);
	nixge_dma_write_reg(lp, XAXIDMA_RX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);
	dma_wmb();
	nixge_dma_write_desc_reg(lp, XAXIDMA_RX_TDESC_OFFSET, lp->rx_bd_p +
			    (sizeof(*lp->rx_bd_v) * (RX_BD_NUM - 1)));

	/* Write to the RS (Run-stop) bit in the Tx channel control register.
	 * Tx channel is now ready to run. But only after we write to the
	 * tail pointer register that the Tx channel will start transmitting
	 */
	nixge_dma_write_desc_reg(lp, XAXIDMA_TX_CDESC_OFFSET, lp->tx_bd_p);
	cr = nixge_dma_read_reg(lp, XAXIDMA_TX_CR_OFFSET);
	nixge_dma_write_reg(lp, XAXIDMA_TX_CR_OFFSET,
			    cr | XAXIDMA_CR_RUNSTOP_MASK);

	spin_unlock_irqrestore(&lp->tx_lock, flags);
	napi_enable(&lp->napi);
	atomic_set(&lp->dma_err_pending, 0);
	if (netif_running(lp->ndev))
		netif_wake_queue(lp->ndev);
}

static int nixge_open(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	struct phy_device *phy;
	int ret;

	// reset the axi dma
	ret = nixge_device_reset(ndev);
	if (ret)
		return ret;

	phy = of_phy_connect(ndev, priv->phy_node,
			     &nixge_handle_link_change, 0, priv->phy_mode);
	if (!phy) {
		ret = -ENODEV;
		goto err_phy;
	}

	/* The RGMII adapter supports all three wire speeds in full duplex.
	 * Half duplex needs collision/backoff logic which this MAC does not
	 * implement, so never advertise it.
	 */
	phy_remove_link_mode(phy, ETHTOOL_LINK_MODE_10baseT_Half_BIT);
	phy_remove_link_mode(phy, ETHTOOL_LINK_MODE_100baseT_Half_BIT);
	phy_remove_link_mode(phy, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
	phy_support_sym_pause(phy);

	phy_start(phy);

	napi_enable(&priv->napi);

	/* Enable interrupts for Axi DMA Tx */
	// dma tx interrupts handler, once the axi dma go through all tx descriptors
	ret = request_irq(priv->tx_irq, nixge_tx_irq, 0, ndev->name, ndev);
	if (ret)
		goto err_tx_irq;
	/* Enable interrupts for Axi DMA Rx */
	// dma rx interrupts handler, once the axi dma go through all rx descriptors
	ret = request_irq(priv->rx_irq, nixge_rx_irq, 0, ndev->name, ndev);
	if (ret)
		goto err_rx_irq;

	netif_start_queue(ndev);

	return 0;

err_rx_irq:
	free_irq(priv->tx_irq, ndev);
err_tx_irq:
	napi_disable(&priv->napi);
	phy_stop(phy);
	phy_disconnect(phy);
err_phy:
	nixge_hw_dma_bd_release(ndev);
	netdev_err(ndev, "failed to open interface: %d\n", ret);
	return ret;
}

static int nixge_stop(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	u32 cr;

	netif_stop_queue(ndev);
	nixge_ctrl_write_reg(priv, NIXGE_REG_PHY_CTL, 0);
	nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_CTL,
			     NIXGE_MAC_CTL_TX_EN |
			     NIXGE_MAC_CTL_SPEED_1000 |
			     NIXGE_MAC_CTL_FULL_DUPLEX);

	cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET,
			    cr & ~XAXIDMA_IRQ_ALL_MASK);
	cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET,
			    cr & ~XAXIDMA_IRQ_ALL_MASK);
	/* No IRQ handler may enqueue recovery after cancel_work_sync(). */
	synchronize_irq(priv->tx_irq);
	synchronize_irq(priv->rx_irq);
	cancel_work_sync(&priv->dma_err_work);
	atomic_set(&priv->dma_err_pending, 0);
	netif_stop_queue(ndev);
	napi_disable(&priv->napi);

	if (ndev->phydev) {
		phy_stop(ndev->phydev);
		phy_disconnect(ndev->phydev);
	}

	cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET,
			    cr & ~(XAXIDMA_CR_RUNSTOP_MASK |
				   XAXIDMA_IRQ_ALL_MASK));
	cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET,
			    cr & ~(XAXIDMA_CR_RUNSTOP_MASK |
				   XAXIDMA_IRQ_ALL_MASK));

	free_irq(priv->tx_irq, ndev);
	free_irq(priv->rx_irq, ndev);

	nixge_hw_dma_bd_release(ndev);

	return 0;
}

static int nixge_change_mtu(struct net_device *ndev, int new_mtu)
{
	if (netif_running(ndev))
		return -EBUSY;

	if ((new_mtu + NIXGE_HDR_SIZE + NIXGE_TRL_SIZE) >
	     NIXGE_MAX_FRAME_SIZE)
		return -EINVAL;

	ndev->mtu = new_mtu;

	return 0;
}

static s32 __nixge_hw_set_mac_address(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);

	nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_LSB,
			     (ndev->dev_addr[2]) << 24 |
			     (ndev->dev_addr[3] << 16) |
			     (ndev->dev_addr[4] << 8) |
			     (ndev->dev_addr[5] << 0));

	nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_MSB,
			     (ndev->dev_addr[1] | (ndev->dev_addr[0] << 8)));
	nixge_ctrl_write_reg(priv, NIXGE_REG_PAUSE_MAC_LSB,
			     (ndev->dev_addr[2] << 24) |
			     (ndev->dev_addr[3] << 16) |
			     (ndev->dev_addr[4] << 8) |
			     ndev->dev_addr[5]);
	nixge_ctrl_write_reg(priv, NIXGE_REG_PAUSE_MAC_MSB,
			     (ndev->dev_addr[0] << 8) | ndev->dev_addr[1]);

	

	return 0;
}

static int nixge_net_set_mac_address(struct net_device *ndev, void *p)
{
	int err;

	err = eth_mac_addr(ndev, p);
	if (!err)
		__nixge_hw_set_mac_address(ndev);

	return err;
}

static void nixge_tx_timeout(struct net_device *ndev)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	u32 tx_status = nixge_dma_read_reg(priv, XAXIDMA_TX_SR_OFFSET);
	u32 rx_status = nixge_dma_read_reg(priv, XAXIDMA_RX_SR_OFFSET);

	netdev_err(ndev, "TX timeout, DMA status tx=0x%x rx=0x%x\n",
		   tx_status, rx_status);
	ndev->stats.tx_errors++;
	nixge_schedule_dma_recovery(priv);
}

static const struct net_device_ops nixge_netdev_ops = {
	.ndo_open = nixge_open,
	.ndo_stop = nixge_stop,
	.ndo_start_xmit = nixge_start_xmit,
	.ndo_tx_timeout = nixge_tx_timeout,
	.ndo_change_mtu	= nixge_change_mtu,
	.ndo_set_mac_address = nixge_net_set_mac_address,
	.ndo_validate_addr = eth_validate_addr,
};

static void nixge_ethtools_get_drvinfo(struct net_device *ndev,
				       struct ethtool_drvinfo *ed)
{
	strlcpy(ed->driver, "nixge", sizeof(ed->driver));
	strlcpy(ed->bus_info, "platform", sizeof(ed->driver));
}

static const char nixge_stat_names[][ETH_GSTRING_LEN] = {
	"fpga_rx_overruns",
	"fpga_rx_errors",
	"fpga_pause_tx",
	"fpga_pause_rx",
	"dma_rx_errors",
	"dma_tx_errors",
	"rx_alloc_fail",
};

static void nixge_ethtools_get_strings(struct net_device *ndev, u32 stringset,
				       u8 *data)
{
	if (stringset == ETH_SS_STATS)
		memcpy(data, nixge_stat_names, sizeof(nixge_stat_names));
}

static int nixge_ethtools_get_sset_count(struct net_device *ndev, int sset)
{
	if (sset == ETH_SS_STATS)
		return ARRAY_SIZE(nixge_stat_names);

	return -EOPNOTSUPP;
}

static void nixge_ethtools_get_stats(struct net_device *ndev,
				     struct ethtool_stats *stats, u64 *data)
{
	struct nixge_priv *priv = netdev_priv(ndev);

	data[0] = nixge_ctrl_read_reg(priv, NIXGE_REG_RX_OVERRUNS);
	data[1] = nixge_ctrl_read_reg(priv, NIXGE_REG_RX_ERRORS);
	data[2] = nixge_ctrl_read_reg(priv, NIXGE_REG_PAUSE_TX);
	data[3] = nixge_ctrl_read_reg(priv, NIXGE_REG_PAUSE_RX);
	data[4] = priv->dma_rx_errors;
	data[5] = priv->dma_tx_errors;
	data[6] = priv->rx_alloc_fail;
}

static void nixge_ethtools_get_pauseparam(struct net_device *ndev,
					  struct ethtool_pauseparam *pause)
{
	struct phy_device *phy = ndev->phydev;

	pause->autoneg = phy ? phy->autoneg : AUTONEG_ENABLE;
	if (!phy)
		return;

	pause->rx_pause = linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
					     phy->advertising);
	pause->tx_pause = pause->rx_pause;
}

static int nixge_ethtools_set_pauseparam(struct net_device *ndev,
					 struct ethtool_pauseparam *pause)
{
	struct phy_device *phy = ndev->phydev;

	if (!phy)
		return -ENODEV;
	if (!pause->autoneg || pause->rx_pause != pause->tx_pause)
		return -EOPNOTSUPP;
	if (!phy_validate_pause(phy, pause))
		return -EINVAL;

	if (pause->rx_pause)
		linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT,
				 phy->advertising);
	else
		linkmode_clear_bit(ETHTOOL_LINK_MODE_Pause_BIT,
				   phy->advertising);
	linkmode_clear_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
			   phy->advertising);
	return phy_start_aneg(phy);
}

static int nixge_ethtools_get_coalesce(struct net_device *ndev,
				       struct ethtool_coalesce *ecoalesce)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	u32 regval = 0;

	// 获取s2mm中断阈值
	regval = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
	ecoalesce->rx_max_coalesced_frames = (regval & XAXIDMA_COALESCE_MASK)
					     >> XAXIDMA_COALESCE_SHIFT;
	// 获取mm2s中断阈值
	regval = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
	ecoalesce->tx_max_coalesced_frames = (regval & XAXIDMA_COALESCE_MASK)
					     >> XAXIDMA_COALESCE_SHIFT;
	return 0;
}

static int nixge_ethtools_set_coalesce(struct net_device *ndev,
				       struct ethtool_coalesce *ecoalesce)
{
	struct nixge_priv *priv = netdev_priv(ndev);

	if (netif_running(ndev)) {
		netdev_err(ndev,
			   "Please stop netif before applying configuration\n");
		return -EBUSY;
	}

	if (ecoalesce->rx_coalesce_usecs ||
	    ecoalesce->rx_coalesce_usecs_irq ||
	    ecoalesce->rx_max_coalesced_frames_irq ||
	    ecoalesce->tx_coalesce_usecs ||
	    ecoalesce->tx_coalesce_usecs_irq ||
	    ecoalesce->tx_max_coalesced_frames_irq ||
	    ecoalesce->stats_block_coalesce_usecs ||
	    ecoalesce->use_adaptive_rx_coalesce ||
	    ecoalesce->use_adaptive_tx_coalesce ||
	    ecoalesce->pkt_rate_low ||
	    ecoalesce->rx_coalesce_usecs_low ||
	    ecoalesce->rx_max_coalesced_frames_low ||
	    ecoalesce->tx_coalesce_usecs_low ||
	    ecoalesce->tx_max_coalesced_frames_low ||
	    ecoalesce->pkt_rate_high ||
	    ecoalesce->rx_coalesce_usecs_high ||
	    ecoalesce->rx_max_coalesced_frames_high ||
	    ecoalesce->tx_coalesce_usecs_high ||
	    ecoalesce->tx_max_coalesced_frames_high ||
	    ecoalesce->rate_sample_interval)
		return -EOPNOTSUPP;
	if (ecoalesce->rx_max_coalesced_frames)
		priv->coalesce_count_rx = ecoalesce->rx_max_coalesced_frames;
	if (ecoalesce->tx_max_coalesced_frames)
		priv->coalesce_count_tx = ecoalesce->tx_max_coalesced_frames;

	return 0;
}

static int nixge_ethtools_set_phys_id(struct net_device *ndev,
				      enum ethtool_phys_id_state state)
{
	struct nixge_priv *priv = netdev_priv(ndev);
	u32 ctrl;

	ctrl = nixge_ctrl_read_reg(priv, NIXGE_REG_LED_CTL);
	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		ctrl |= NIXGE_ID_LED_CTL_EN;
		/* Enable identification LED override*/
		nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
		return 2;

	case ETHTOOL_ID_ON:
		ctrl |= NIXGE_ID_LED_CTL_VAL;
		nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
		break;

	case ETHTOOL_ID_OFF:
		ctrl &= ~NIXGE_ID_LED_CTL_VAL;
		nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
		break;

	case ETHTOOL_ID_INACTIVE:
		/* Restore LED settings */
		ctrl &= ~NIXGE_ID_LED_CTL_EN;
		nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
		break;
	}

	return 0;
}

static const struct ethtool_ops nixge_ethtool_ops = {
	.get_drvinfo    = nixge_ethtools_get_drvinfo,
	.get_strings    = nixge_ethtools_get_strings,
	.get_sset_count = nixge_ethtools_get_sset_count,
	.get_ethtool_stats = nixge_ethtools_get_stats,
	.get_pauseparam = nixge_ethtools_get_pauseparam,
	.set_pauseparam = nixge_ethtools_set_pauseparam,
	.get_coalesce   = nixge_ethtools_get_coalesce,
	.set_coalesce   = nixge_ethtools_set_coalesce,
	.set_phys_id    = nixge_ethtools_set_phys_id,
	.get_link_ksettings     = phy_ethtool_get_link_ksettings,
	.set_link_ksettings     = phy_ethtool_set_link_ksettings,
	.get_link		= ethtool_op_get_link,
};

static int nixge_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
	struct nixge_priv *priv = bus->priv;
	u32 status, tmp;
	int err;
	u16 device;

	if (reg & MII_ADDR_C45) {
		device = (reg >> 16) & 0x1f;

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);

		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS)
			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err) {
			dev_err(priv->dev, "timeout setting address");
			return err;
		}

		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_READ) |
			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
	} else {
		device = reg & 0x1f;

		tmp = NIXGE_MDIO_CLAUSE22 | NIXGE_MDIO_OP(NIXGE_MDIO_C22_READ) |
			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);
	}

	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
	nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

	err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
				      !status, 10, 1000);
	if (err) {
		dev_err(priv->dev, "timeout setting read command");
		return err;
	}

	status = nixge_ctrl_read_reg(priv, NIXGE_REG_MDIO_DATA);

	return status;
}

static int nixge_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
	struct nixge_priv *priv = bus->priv;
	u32 status, tmp;
	u16 device;
	int err;

	if (reg & MII_ADDR_C45) {
		device = (reg >> 16) & 0x1f;

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);

		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS)
			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err) {
			dev_err(priv->dev, "timeout setting address");
			return err;
		}

		tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_WRITE)
			| NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);
		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err)
			dev_err(priv->dev, "timeout setting write command");
	} else {
		device = reg & 0x1f;

		tmp = NIXGE_MDIO_CLAUSE22 |
			NIXGE_MDIO_OP(NIXGE_MDIO_C22_WRITE) |
			NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
		nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

		err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err)
			dev_err(priv->dev, "timeout setting write command");
	}

	return err;
}

static int nixge_mdio_setup(struct nixge_priv *priv, struct device_node *np)
{
	struct mii_bus *bus;

	bus = devm_mdiobus_alloc(priv->dev);
	if (!bus)
		return -ENOMEM;

	snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(priv->dev));
	bus->priv = priv;
	bus->name = "nixge_mii_bus";
	bus->read = nixge_mdio_read;
	bus->write = nixge_mdio_write;
	bus->parent = priv->dev;

	priv->mii_bus = bus;

	return of_mdiobus_register(bus, np);
}

static void *nixge_get_nvmem_address(struct device *dev)
{
	struct nvmem_cell *cell;
	size_t cell_size;
	char *mac;

	cell = nvmem_cell_get(dev, "address");
	if (IS_ERR(cell))
		return NULL;

	mac = nvmem_cell_read(cell, &cell_size);
	nvmem_cell_put(cell);

	return mac;
}

/* Match table for of_platform binding */
static const struct of_device_id nixge_dt_ids[] = {
	{ .compatible = "ni,xge-enet-2.00", .data = (void *)NIXGE_V2 },
	{ .compatible = "ni,xge-enet-3.00", .data = (void *)NIXGE_V3 },
	{},
};
MODULE_DEVICE_TABLE(of, nixge_dt_ids);

static int nixge_of_get_resources(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	enum nixge_version version;
	struct resource *ctrlres;
	struct resource *dmares;
	struct net_device *ndev;
	struct nixge_priv *priv;

	ndev = platform_get_drvdata(pdev);
	priv = netdev_priv(ndev);

	of_id = of_match_node(nixge_dt_ids, pdev->dev.of_node);
	if (!of_id)
		return -ENODEV;

	version = (enum nixge_version)of_id->data;
	if (version <= NIXGE_V2)
		// dma register resourcese 
		dmares = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	else
		dmares = platform_get_resource_byname(pdev, IORESOURCE_MEM,
						      "dma");

	priv->dma_regs = devm_ioremap_resource(&pdev->dev, dmares);
	if (IS_ERR(priv->dma_regs)) {
		netdev_err(ndev, "failed to map dma regs\n");
		return PTR_ERR(priv->dma_regs);
	}
	if (version <= NIXGE_V2) {
		// sfp_wrapper register resources
		priv->ctrl_regs = priv->dma_regs + NIXGE_REG_CTRL_OFFSET;
	} else {
		ctrlres = platform_get_resource_byname(pdev, IORESOURCE_MEM,
						       "ctrl");
		priv->ctrl_regs = devm_ioremap_resource(&pdev->dev, ctrlres);
	}
	if (IS_ERR(priv->ctrl_regs)) {
		netdev_err(ndev, "failed to map ctrl regs\n");
		return PTR_ERR(priv->ctrl_regs);
	}
	return 0;
}

static int dummy_open(struct inode * inode, struct file * filp)
{
    return 0;
}

static int dummy_release(struct inode * inode, struct file * filp)
{
    return 0;
}

static ssize_t dummy_read (struct file *filp, char __user * buf, size_t count,
                                loff_t * offset)
{
	struct nixge_priv *priv = netdev_priv(ndev_chr);
	u32 ip[1];
	int value;
	ip[0] = nixge_ctrl_read_reg(priv,NIXGE_IP_CTL);
	value = copy_to_user(buf,ip,sizeof(ip));
	if(value == 0)
		return count;
    return 0;
}

static void split_ip(char *input,char *first,char *second,char *third,char *fourth)
{
	int i,j = 0;
	int flag = 0;
	for(i=0;i<strlen(input);i++)
	{
		switch (flag)
		{
		case 0:
			first[j] = input[i];
			break;
		case 1:
			second[j] = input[i];
		case 2:
			third[j] = input[i];
		case 3:
			fourth[j] = input[i];
		default:
			break;
		}
		j++;
		if(input[i] == '.')
		{
			switch (flag)
			{
			case 0:
				first[j] = '\0';
				break;
			case 1:
				second[j] = '\0';
			case 2:
				third[j] ='\0';
			case 3:
				fourth[j] = '\0';
			default:
				break;
			}
			j = 0;
			flag++;
		}
	}
}

static ssize_t dummy_write(struct file * filp, const char __user * buf, size_t count,
                                loff_t * offset)
{
	struct nixge_priv *priv = netdev_priv(ndev_chr);
	int value;
	char write_buf[20];
	value = copy_from_user(write_buf,buf,count);
    if(value == 0){
		if(2 == count){
			nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_MASK, (int) (write_buf[0] - '0'));
		}
		else if(count >= 9){
			u32 top_n,mid_n,s_mid_n,last_n;
			u32 write_reg_ip;
			char ip[20];
			char top[5],mid[5],s_mid[5],last[5];
			memcpy(ip,write_buf,strlen(write_buf));
			split_ip(ip,top,mid,s_mid,last);
			top_n = simple_strtol(top,NULL,10);
			mid_n = simple_strtol(mid,NULL,10);
			s_mid_n = simple_strtol(s_mid,NULL,10);
			last_n = simple_strtol(last,NULL,10);
			write_reg_ip = top_n << 24 | mid_n << 16 | s_mid_n <<8 | last_n;
			nixge_ctrl_write_reg(priv,NIXGE_IP_CTL,write_reg_ip);
		}
		return count;
	}
	return 0;
}


static struct file_operations dummy_fops = {
    .owner = THIS_MODULE,
	.open =  dummy_open,
    .release = dummy_release,
    .read =  dummy_read,
    .write =     dummy_write,
};

static void dummy_char_init(struct device *dummy_device)
{
    int error;
    dev_t devt = 0;

    pr_emerg("init char module\n");
    error = alloc_chrdev_region(&devt, 0, 1, "dummy_char");
    if (error < 0) {
        pr_err("Can't get major number\n");
        return ;
    }
    major = MAJOR(devt);
    pr_emerg("dummy_char major number = %d\n",major);

    dummy_class = class_create(THIS_MODULE, "dummy_char_class");
    if (IS_ERR(dummy_class)) {
        pr_err("Error creating dummy char class.\n");
        unregister_chrdev_region(MKDEV(major, 0), 1);
        return;
    }
    /* Initialize the char device and tie a file_operations to it */
    cdev_init(&dummy_cdev, &dummy_fops);
    dummy_cdev.owner = THIS_MODULE;
    /* Now make the device live for the users to access */
    cdev_add(&dummy_cdev, devt, 1);

    dummy_device = device_create(dummy_class,
                                NULL,   /* no parent device */
                                devt,    /* associated dev_t */
                                NULL,   /* no additional data */
                                "dummy_char");  /* device name */

    if (IS_ERR(dummy_device)) {
        pr_emerg("Error creating dummy char device.\n");
        class_destroy(dummy_class);
        unregister_chrdev_region(devt, 1);
        return ;
    }

    pr_emerg("dummy char module loaded\n");
    return;
}

static void dummy_char_cleanup_module(void)
{
	unregister_chrdev_region(MKDEV(major, 0), 1);
    device_destroy(dummy_class, MKDEV(major, 0));
    cdev_del(&dummy_cdev);
    class_destroy(dummy_class);
}

static int nixge_probe(struct platform_device *pdev)
{
	struct device_node *mn, *phy_node;
	struct nixge_priv *priv;
	struct net_device *ndev;
	struct device *cdev;
	const u8 *mac_addr;
	int err;

	ndev = alloc_etherdev(sizeof(*priv));
	if (!ndev)
		return -ENOMEM;

	dummy_char_init(cdev);
	platform_set_drvdata(pdev, ndev);
	SET_NETDEV_DEV(ndev, &pdev->dev);
	

	/* Keep one packet per descriptor until SG ring accounting is added. */
	ndev->features &= ~NETIF_F_SG;
	ndev->hw_features &= ~NETIF_F_SG;
	ndev->netdev_ops = &nixge_netdev_ops;
	ndev->ethtool_ops = &nixge_ethtool_ops;
	ndev->watchdog_timeo = msecs_to_jiffies(5000);

	/* The optimized RX path uses one 2 KiB buffer per descriptor. */
	ndev->min_mtu = 64;
	ndev->max_mtu = NIXGE_MTU;

	mac_addr = nixge_get_nvmem_address(&pdev->dev);
	if (mac_addr && is_valid_ether_addr(mac_addr)) {
		ether_addr_copy(ndev->dev_addr, mac_addr);
		kfree(mac_addr);
	} else {
		eth_hw_addr_random(ndev);
	}

	priv = netdev_priv(ndev);
	priv->ndev = ndev;
	priv->dev = &pdev->dev;
	spin_lock_init(&priv->tx_lock);
	atomic_set(&priv->dma_err_pending, 0);
	INIT_WORK(&priv->dma_err_work, nixge_dma_err_handler);
	ndev_chr = ndev;
	netif_carrier_off(ndev);

	netif_napi_add(ndev, &priv->napi, nixge_poll, NAPI_POLL_WEIGHT);
	// get the dma and eth_interface io register resources
	err = nixge_of_get_resources(pdev);
	if (err)
		return err;

	nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_MASK, 0);
	nixge_ctrl_write_reg(priv, NIXGE_REG_PHY_CTL, 0);
	nixge_ctrl_write_reg(priv, NIXGE_REG_MAC_CTL,
			     NIXGE_MAC_CTL_TX_EN |
			     NIXGE_MAC_CTL_SPEED_1000 |
			     NIXGE_MAC_CTL_FULL_DUPLEX);
	// set the mac address to PL eth_interface
	__nixge_hw_set_mac_address(ndev);

	// get irq resources
	priv->tx_irq = platform_get_irq_byname(pdev, "tx");
	if (priv->tx_irq < 0) {
		netdev_err(ndev, "could not find 'tx' irq");
		return priv->tx_irq;
	}

	priv->rx_irq = platform_get_irq_byname(pdev, "rx");
	if (priv->rx_irq < 0) {
		netdev_err(ndev, "could not find 'rx' irq");
		return priv->rx_irq;
	}

	priv->coalesce_count_rx = XAXIDMA_DFT_RX_THRESHOLD;
	priv->coalesce_count_tx = XAXIDMA_DFT_TX_THRESHOLD;

	// register mdio bus
	mn = of_get_child_by_name(pdev->dev.of_node, "mdio");
	if (mn) {
		err = nixge_mdio_setup(priv, mn);
		of_node_put(mn);
		if (err) {
			netdev_err(ndev, "error registering mdio bus");
			goto free_netdev;
		}
	}

	// get phy mode from devicetree
	priv->phy_mode = of_get_phy_mode(pdev->dev.of_node);
	if (priv->phy_mode < 0) {
		netdev_err(ndev, "not find \"phy-mode\" property\n");
		err = -EINVAL;
		goto unregister_mdio;
	}

	// get phy handle from devicetree
	phy_node = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
	if (!phy_node && of_phy_is_fixed_link(pdev->dev.of_node)) {
		err = of_phy_register_fixed_link(pdev->dev.of_node);
		if (err < 0) {
			netdev_err(ndev, "broken fixed-link specification\n");
			goto unregister_mdio;
		}
		phy_node = of_node_get(pdev->dev.of_node);
		priv->is_fixed_link = 1;
	}
	priv->phy_node = phy_node;

	err = register_netdev(priv->ndev);
	if (err) {
		netdev_err(ndev, "register_netdev() error (%i)\n", err);
		goto free_phy;
	}

	return 0;

free_phy:
	if (of_phy_is_fixed_link(pdev->dev.of_node))
		of_phy_deregister_fixed_link(pdev->dev.of_node);
	of_node_put(phy_node);

unregister_mdio:
	if (priv->mii_bus)
		of_mdiobus_unregister(priv->mii_bus);

free_netdev:
	free_netdev(ndev);

	return err;
}

static int nixge_remove(struct platform_device *pdev)
{
	struct net_device *ndev = platform_get_drvdata(pdev);
	struct nixge_priv *priv = netdev_priv(ndev);

	unregister_netdev(ndev);
	dummy_char_cleanup_module();
	if (priv->is_fixed_link)
		of_phy_deregister_fixed_link(pdev->dev.of_node);
	of_node_put(priv->phy_node);

	if (priv->mii_bus)
		of_mdiobus_unregister(priv->mii_bus);

	free_netdev(ndev);

	return 0;
}

static struct platform_driver nixge_driver = {
	.probe		= nixge_probe,
	.remove		= nixge_remove,
	.driver		= {
		.name		= "nixge",
		.of_match_table	= of_match_ptr(nixge_dt_ids),
	},
};
module_platform_driver(nixge_driver);

MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("National Instruments XGE Management MAC");
MODULE_AUTHOR("Moritz Fischer <mdf@kernel.org>");
