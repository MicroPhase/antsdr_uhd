/*
 * Copyright 2000-2009
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <common.h>
#include <command.h>
#include <version.h>
#include <linux/compiler.h>
#ifdef CONFIG_SYS_COREBOOT
#include <asm/arch/sysinfo.h>
#endif

const char __weak version_string[] = U_BOOT_VERSION_STRING;

static int do_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	printf("\n%s\n", version_string);
#ifdef CC_VERSION_STRING
	puts(CC_VERSION_STRING "\n");
#endif
#ifdef LD_VERSION_STRING
	puts(LD_VERSION_STRING "\n");
#endif
#ifdef CONFIG_SYS_COREBOOT
	printf("coreboot-%s (%s)\n", lib_sysinfo.version, lib_sysinfo.build);
#endif
	return 0;
}

U_BOOT_CMD(
	version,	1,		1,	do_version,
	"print monitor, compiler and linker version",
	""
);

static int do_env_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	setenv("uboot-version", version_string);
	return 0;
}

U_BOOT_CMD(
	envversion,	1,		1,	do_env_version,
	"set env variable uboot-version",
	""
);

#include "xadcps.h"
static int do_xadc(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	static XAdcPs XAdcInst;      /* XADC driver instance */
	XAdcPs_Config *ConfigPtr;
	XAdcPs *XAdcInstPtr = &XAdcInst;
	u32 RawData, chan, cnt = 2;
	int val;
	char buf[16];


	ConfigPtr = XAdcPs_LookupConfig(0);
	if (ConfigPtr == NULL) {
		return -1;
	}

	if (argc > 1)
		chan = simple_strtoul(argv[1], NULL, 10);
	else
		chan = XADCPS_CH_VPVN;

	do {
		XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr,
				ConfigPtr->BaseAddress);

		XAdcPs_SetSingleChParams(XAdcInstPtr,chan , 0, 0, 0);
		XAdcPs_SetSequencerMode(XAdcInstPtr, XADCPS_SEQ_MODE_SINGCHAN);

		RawData = XAdcPs_GetAdcData(XAdcInstPtr, chan);

	} while (cnt--);

	XAdcPs_SetPowerdownMode(XAdcInstPtr, XADCPS_PD_MODE_XADC);

	val = ((RawData >> 4) * 1000) / 0xFFF;

	snprintf(buf, sizeof(buf), "%d", val);

	printf("%s\n", buf);
	return val;
}

U_BOOT_CMD(
	xadc, CONFIG_SYS_MAXARGS, 1, do_xadc,
	"read xadc channel",
	""
);

extern int pluto_revA;

static int do_adi_hw_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
{
	int val, ret = 0, i;
	char buf[16];

	if (pluto_revA) {
		setenv("PlutoRevA", "1");
	} else {
		val = do_xadc(cmdtp, flag, 1, argv);
		setenv("PlutoRevA", "");
		for (i = 100; i <= 1000; i += 100) {
			if ((val >= (i - 50)) && (val < (i + 50))) {
				ret = i / 100;
				break;
			}
		}
	}

	snprintf(buf, sizeof(buf), "config@%d", ret);
	setenv("fit_config", buf);

	return ret;
}

U_BOOT_CMD(
	adi_hwref, CONFIG_SYS_MAXARGS, 1, do_adi_hw_version,
	"determine pluto/m2k hw revision",
	""
);
