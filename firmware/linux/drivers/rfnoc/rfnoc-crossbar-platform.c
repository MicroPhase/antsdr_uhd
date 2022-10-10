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

#include <linux/clk.h>
#include <linux/slab.h>
#include <linux/module.h>
#include <linux/io.h>
#include <linux/of_address.h>
#include <linux/platform_device.h>
#include <linux/log2.h>
#include <linux/rfnoc/rfnoc-crossbar.h>

#define PLATFORM_CROSSBAR_VERSION_OFF		0x10
#define PLATFORM_CROSSBAR_NUM_PORTS_OFF		0x14
#define PLATFORM_CROSSBAR_LADDR_OFF		0x18
#define PLATFORM_CROSSBAR_TCAM_REMOTE_OFF	0x20
#define PLATFORM_CROSSBAR_TCAM_LOCAL_OFF	0x420

#define SR_ADDR(x) ((x) << 2)

struct platform_crossbar_priv {
	struct clk *clk;
	void __iomem *io_base;
};

static void platform_crossbar_write(struct platform_crossbar_priv *p,
					      u32 offset, u32 val)
{
	writel_relaxed(val, p->io_base + offset);
}

static u32 platform_crossbar_rp_read(struct platform_crossbar_priv *p,
				     u32 offset)
{
	return readl_relaxed(p->io_base + offset); }

static void platform_crossbar_set_local_addr(struct rfnoc_crossbar *xb,
					     u8 local_addr)
{
	struct platform_crossbar_priv *priv = xb->priv;

	dev_dbg(&xb->dev, "%s: setting local addr to 0x%02x\n", __func__,
		 local_addr);

	platform_crossbar_write(priv, PLATFORM_CROSSBAR_LADDR_OFF,
				local_addr);
}

static int platform_crossbar_add_route(struct rfnoc_crossbar *xb, u8 dest,
				       u8 port)
{
	int err;
	struct platform_crossbar_priv *priv = xb->priv;

	err = clk_enable(priv->clk);
	if (err) {
		dev_err(&xb->dev, "unable to enable clk\n");
		return err;
	}

	dev_dbg(&xb->dev, "%s: Adding route for remote dest 0x%02x, port 0x%02x\n",
		 __func__, dest, port);

	platform_crossbar_write(priv, PLATFORM_CROSSBAR_TCAM_REMOTE_OFF
				+ SR_ADDR(dest),
				port);

	clk_disable(priv->clk);

	return 0;
}

static int platform_crossbar_del_route(struct rfnoc_crossbar *xb,
				       struct rfnoc_crossbar_route *route)
{
	int err;
	struct platform_crossbar_priv *priv;

	priv = xb->priv;

	err = clk_enable(priv->clk);
	if (err) {
		dev_err(&xb->dev, "unable to enable clk\n");
		return err;
	}

	clk_disable(priv->clk);

	return 0;
}

static u32 platform_crossbar_get_port_stats(struct rfnoc_crossbar *xb, u8 from, u8 to)
{
	return platform_crossbar_rp_read(xb->priv,
					 PLATFORM_CROSSBAR_TCAM_LOCAL_OFF +
					 SR_ADDR((from << order_base_2(xb->nports)) + to));
}

static void __platform_crossbar_static_init(struct platform_crossbar_priv *priv)
{
	size_t i;

	for (i = 0; i < 0x100; i++)
		platform_crossbar_write(priv, PLATFORM_CROSSBAR_TCAM_LOCAL_OFF +
					SR_ADDR(i), (i >> 4) & 0xf);
}

static const struct rfnoc_crossbar_ops platform_crossbar_ops = {
	.set_local_addr = platform_crossbar_set_local_addr,
	.add_route = platform_crossbar_add_route,
	.del_route = platform_crossbar_del_route,
	.get_port_stats = platform_crossbar_get_port_stats,
};

static int platform_crossbar_probe(struct platform_device *pdev)
{
	struct platform_crossbar_priv *priv;
	struct resource *res;
	u32 nports, version;
	int err;

	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	priv->io_base = devm_ioremap_resource(&pdev->dev, res);
	if (IS_ERR(priv->io_base))
		return PTR_ERR(priv->io_base);

	priv->clk = devm_clk_get(&pdev->dev, "bus_clk");
	if (IS_ERR(priv->clk)) {
		dev_err(&pdev->dev, "input clock not found\n");
		return PTR_ERR(priv->clk);
	}

	err = clk_prepare_enable(priv->clk);
	if (err) {
		dev_err(&pdev->dev, "unable to enable clk\n");
		return err;
	}

	version = platform_crossbar_rp_read(priv, PLATFORM_CROSSBAR_VERSION_OFF);
	if (version != 1) {
		dev_err(&pdev->dev, "Found unknown revision %08x, bailing!\n",
			version);
		goto out_unknown_rev;
	}

	nports = platform_crossbar_rp_read(priv,
					   PLATFORM_CROSSBAR_NUM_PORTS_OFF);
	__platform_crossbar_static_init(priv);

	clk_disable(priv->clk);

	err = rfnoc_crossbar_register(&pdev->dev, "NI Platform RFNoC Crossbar",
				      &platform_crossbar_ops, nports, priv);

	if (err) {
		dev_err(&pdev->dev, "unable to register crossbar\n");
		clk_unprepare(priv->clk);
		return err;
	}

	return 0;

out_unknown_rev:
	clk_disable_unprepare(priv->clk);
	return -ENODEV;
}

static int platform_crossbar_remove(struct platform_device *pdev)
{
	struct rfnoc_crossbar *xb;
	struct platform_crossbar_priv *priv;

	xb = platform_get_drvdata(pdev);
	priv = xb->priv;

	rfnoc_crossbar_unregister(&pdev->dev);

	clk_unprepare(priv->clk);

	return 0;
}

#ifdef CONFIG_OF
static const struct of_device_id platform_crossbar_of_match[] = {
	{ .compatible = "ni,platform-crossbar-sb", },
	{ .compatible = "ni,platform-crossbar-rp", },
	{},
};
MODULE_DEVICE_TABLE(of, platform_crossbar_of_match);
#endif

static struct platform_driver platform_crossbar_driver = {
	.probe = platform_crossbar_probe,
	.remove = platform_crossbar_remove,
	.driver = {
		.name = "rfnoc_platform_crossbar",
		.of_match_table = of_match_ptr(platform_crossbar_of_match),
	},
};

module_platform_driver(platform_crossbar_driver);

MODULE_AUTHOR("Moritz Fischer <mdf@kernel.org>");
MODULE_DESCRIPTION("RFNoC Crossbar");
