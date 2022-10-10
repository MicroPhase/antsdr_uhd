// SPDX-License-Identifier: GPL-2.0
/* Copyright (c) 2018 National Instruments Corp
 *
 * Chromium-EC Thermal Driver
 * Authors: Moritz Fischer
 *
 */

#include <linux/device.h>
#include <linux/err.h>
#include <linux/io.h>
#include <linux/kernel.h>
#include <linux/of.h>
#include <linux/module.h>
#include <linux/delay.h>
#include <linux/mfd/cros_ec.h>
#include <linux/mfd/cros_ec_commands.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/thermal.h>

#include <linux/mfd/cros_ec.h>

#define CROS_EC_THERMAL_MAX_SENSORS (EC_TEMP_SENSOR_ENTRIES \
				   + EC_TEMP_SENSOR_B_ENTRIES)
#define CROS_EC_THERMAL_NUM_TRIPS	4
#define CROS_EC_THERMAL_TRIP_MASK	GENMASK(3, 0)

#define CROS_EC_THERMAL_POLL_INT 1000
#define REG_TO_MILLICELSIUS(x) ((((int)(x) + EC_TEMP_SENSOR_OFFSET) - 273) \
			       * 1000)

#define CROS_EC_THERMAL_FAN_MIN 3800
#define CROS_EC_THERMAL_FAN_MAX 13500

struct cros_ec_thermal_core {
	struct cros_ec_device *ec;
	struct device *dev;

	struct thermal_cooling_device *cdevs[EC_FAN_SPEED_ENTRIES];
	struct thermal_zone_device *tzds[CROS_EC_THERMAL_MAX_SENSORS];
};

struct cros_ec_thermal_fan {
	struct cros_ec_thermal_core *core;
	size_t id;
};

struct cros_ec_trip {
	int type;
	int temp;
	int min_state;
	int max_state;
};



struct cros_ec_thermal_zone {
	struct thermal_zone_device *tzdev;
	struct cros_ec_thermal_core *core;
	struct cros_ec_trip trips[CROS_EC_THERMAL_NUM_TRIPS];
	enum thermal_device_mode mode;
	size_t id;
};


static int cros_ec_get_sensor_dev_idx(struct cros_ec_thermal_core *core,
				      struct thermal_zone_device *tzd)
{
	struct cros_ec_thermal_zone *ctz = tzd->devdata;

	return ctz->id;
}




static int cros_ec_thermal_bind(struct thermal_zone_device *tzdev,
				struct thermal_cooling_device *cdev)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;
	size_t i;
	int err;

	for (i = 0; i < CROS_EC_THERMAL_NUM_TRIPS; i++) {
		const struct cros_ec_trip *trip = &tzd->trips[i];

		err = thermal_zone_bind_cooling_device(tzdev, i, cdev,
						       trip->max_state,
						       trip->min_state,
						       THERMAL_WEIGHT_DEFAULT);
		if (err < 0)
			return err;
	}
	return 0;
}

static int cros_ec_thermal_unbind(struct thermal_zone_device *tzdev,
				  struct thermal_cooling_device *cdev)
{
	size_t i;
	int err;

	for (i = 0; i < CROS_EC_THERMAL_NUM_TRIPS; i++) {
		err = thermal_zone_unbind_cooling_device(tzdev, i, cdev);
		if (err < 0)
			return err;
	}
	return 0;
}

static int cros_ec_thermal_get_mode(struct thermal_zone_device *tzdev,
				    enum thermal_device_mode *mode)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;

	*mode = tzd->mode;

	return 0;
}

static int cros_ec_thermal_set_mode(struct thermal_zone_device *tzdev,
				    enum thermal_device_mode mode)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;

	mutex_lock(&tzdev->lock);
	if (mode == THERMAL_DEVICE_ENABLED)
		tzdev->polling_delay = CROS_EC_THERMAL_POLL_INT;
	else
		tzdev->polling_delay = 0;

	mutex_unlock(&tzdev->lock);

	tzd->mode = mode;
	thermal_zone_device_update(tzdev, THERMAL_EVENT_UNSPECIFIED);

	return 0;
}

static int cros_ec_thermal_get_temp(struct thermal_zone_device *tzdev,
				    int *p_temp)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;
	int idx;
	u8 _temp;
	int err;

	idx = tzd->id;

	if (idx < EC_TEMP_SENSOR_ENTRIES)
		err = tzd->core->ec->cmd_readmem(tzd->core->ec,
						 EC_MEMMAP_TEMP_SENSOR + idx,
						 sizeof(_temp), &_temp);
	else
		err = tzd->core->ec->cmd_readmem(tzd->core->ec,
						 EC_MEMMAP_TEMP_SENSOR_B + idx,
						 sizeof(_temp), &_temp);

	if (err < 0)
		return err;

	switch (_temp) {
	case EC_TEMP_SENSOR_NOT_PRESENT:
	case EC_TEMP_SENSOR_ERROR:
	case EC_TEMP_SENSOR_NOT_POWERED:
	case EC_TEMP_SENSOR_NOT_CALIBRATED:
			return -EIO;
	}

	*p_temp = (long)REG_TO_MILLICELSIUS(_temp);

	return 0;
}

static const enum thermal_trip_type types[] = {
	[EC_TEMP_THRESH_WARN] = THERMAL_TRIP_ACTIVE,
	[EC_TEMP_THRESH_HIGH] = THERMAL_TRIP_ACTIVE,
	[EC_TEMP_THRESH_HALT] = THERMAL_TRIP_CRITICAL,
};

static int cros_ec_thermal_get_trip_type(struct thermal_zone_device *tzdev,
				       int trip,
				       enum thermal_trip_type *p_type)
{
	if (trip < 0 || trip >= CROS_EC_THERMAL_NUM_TRIPS)
		return -EINVAL;

	if (trip < EC_TEMP_THRESH_COUNT)
		*p_type = types[trip];
	else
		*p_type = THERMAL_TRIP_PASSIVE;

	return 0;
}

static int cros_ec_thermal_command(struct cros_ec_device *ec,
				  unsigned int command,
				  unsigned int version,
				  void *outdata,
				  unsigned int outsize,
				  void *indata,
				  unsigned int insize)
{
	struct cros_ec_command *msg;
	int ret;

	msg = kzalloc(sizeof(*msg) + max(outsize, insize), GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->version = version;
	msg->command = command;
	msg->outsize = outsize;
	msg->insize = insize;

	if (outsize)
		memcpy(msg->data, outdata, outsize);

	ret = cros_ec_cmd_xfer_status(ec, msg);
	if (ret >= 0 && insize)
		memcpy(indata, msg->data, insize);

	kfree(msg);
	return ret;
}

static int cros_ec_thermal_get_trip_temp(struct thermal_zone_device *tzdev,
				       int trip, int *p_temp)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;
	struct ec_params_thermal_get_threshold_v1 params;
	struct ec_thermal_config ret_config;
	int idx, err;

	if (trip < 0 || trip > EC_TEMP_THRESH_COUNT)
		return -EINVAL;

	idx = tzd->id;
	if (idx < 0)
		return idx;

	params.sensor_num = idx;
	err = cros_ec_thermal_command(tzd->core->ec, EC_CMD_THERMAL_GET_THRESHOLD, 1,
				      &params, sizeof(params),
				      &ret_config, sizeof(ret_config));
	if (err < 0)
		return err;

	if (trip < EC_TEMP_THRESH_COUNT)
		*p_temp = (ret_config.temp_host[trip] - 273) * 1000;
	/* If we don't want one of the defined trip points, pull the fan off point */
	else
		*p_temp = (ret_config.temp_fan_off - 273) * 1000;

	return 0;
}

static int cros_ec_thermal_set_trip_temp(struct thermal_zone_device *tzdev,
				       int trip, int temp)
{
	struct cros_ec_thermal_zone *tzd = tzdev->devdata;
	struct ec_params_thermal_get_threshold_v1 g_param;
	struct ec_params_thermal_set_threshold_v1 s_param;
	struct ec_thermal_config cfg;
	int idx, err;

	idx = cros_ec_get_sensor_dev_idx(tzd->core, tzdev);
	if (idx < 0)
		return idx;

	if (trip < 0 || trip >= CROS_EC_THERMAL_NUM_TRIPS)
		return -EINVAL;

	g_param.sensor_num = idx;
	err = cros_ec_thermal_command(tzd->core->ec, EC_CMD_THERMAL_GET_THRESHOLD, 1,
								  &g_param, sizeof(g_param),
								  &cfg, sizeof(cfg));
	if (err < 0)
		return err;

	s_param.sensor_num = idx;
	memcpy(&s_param.cfg, &cfg, sizeof(cfg));
	if (trip < EC_TEMP_THRESH_COUNT)
		s_param.cfg.temp_host[trip] = temp / 1000 + 273;
	else
		s_param.cfg.temp_fan_off = temp / 1000 + 273;

	err = cros_ec_thermal_command(tzd->core->ec, EC_CMD_THERMAL_SET_THRESHOLD, 1,
								  &s_param, sizeof(s_param),
								  &cfg, sizeof(cfg));
	if (err < 0)
		return err;

	tzd->trips[trip].temp = temp;

	return 0;
}

static struct thermal_zone_device_ops cros_ec_thermal_tzd_ops = {
	.bind = cros_ec_thermal_bind,
	.unbind = cros_ec_thermal_unbind,
	.get_mode = cros_ec_thermal_get_mode,
	.set_mode = cros_ec_thermal_set_mode,
	.get_temp = cros_ec_thermal_get_temp,
	.get_trip_type	= cros_ec_thermal_get_trip_type,
	.get_trip_temp	= cros_ec_thermal_get_trip_temp,
	.set_trip_temp	= cros_ec_thermal_set_trip_temp,
};

static int cros_ec_thermal_zone_init(struct cros_ec_thermal_core *core,
				     struct thermal_zone_device **p_tzd,
				     int idx)
{
	struct cros_ec_thermal_zone *tzd;

	tzd = devm_kzalloc(core->dev, sizeof(*tzd), GFP_KERNEL);
	if (!tzd)
		return -ENOMEM;

	tzd->core = core;
	tzd->id = idx;

	tzd->tzdev = thermal_zone_device_register("cros-ec-thermal",
						  CROS_EC_THERMAL_NUM_TRIPS,
						  CROS_EC_THERMAL_TRIP_MASK,
						  tzd, &cros_ec_thermal_tzd_ops,
						  NULL, 0, CROS_EC_THERMAL_POLL_INT);
	if (IS_ERR(tzd->tzdev))
		return PTR_ERR(tzd->tzdev);

	tzd->mode = THERMAL_DEVICE_ENABLED;
	*p_tzd = tzd->tzdev;

	return 0;
}

static int cros_ec_thermal_get_max_state(struct thermal_cooling_device *cdev,
				       unsigned long *p_state)
{
	*p_state = CROS_EC_THERMAL_FAN_MAX;
	return 0;
}

static int cros_ec_thermal_get_cur_state(struct thermal_cooling_device *cdev,
				       unsigned long *p_state)
{
	struct cros_ec_thermal_fan *fan = cdev->devdata;
	struct cros_ec_thermal_core *core = fan->core;
	struct cros_ec_device *ec = core->ec;
	int idx, rv;
	u16 val;

	idx = fan->id;
	rv = ec->cmd_readmem(ec, EC_MEMMAP_FAN + 2 * idx, sizeof(val), &val);
	if (rv < 0 || val == EC_FAN_SPEED_NOT_PRESENT) {
		*p_state = 0;
		return rv;
	}

	if (val == EC_FAN_SPEED_STALLED)
		val = 0;

	*p_state = val;

	return 0;
}

static int cros_ec_thermal_set_cur_state(struct thermal_cooling_device *cdev,
				       unsigned long state)
{
	return 0;
}

static const struct thermal_cooling_device_ops cros_ec_cooling_ops = {
	.get_max_state	= cros_ec_thermal_get_max_state,
	.get_cur_state	= cros_ec_thermal_get_cur_state,
	.set_cur_state	= cros_ec_thermal_set_cur_state,
};

static int cros_ec_thermal_fan_init(struct cros_ec_thermal_core *core,
				    struct thermal_cooling_device **p_cdev,
				    int idx)
{
	struct thermal_cooling_device *cdev;
	struct cros_ec_thermal_fan *fan;

	fan = devm_kzalloc(core->dev, sizeof(*fan), GFP_KERNEL);
	if (!fan)
		return -ENOMEM;

	fan->core = core;
	fan->id = idx;

	cdev = thermal_cooling_device_register("Fan", fan, &cros_ec_cooling_ops);
	if (IS_ERR(cdev))
		return PTR_ERR(cdev);

	*p_cdev = cdev;

	return 0;
}

static int cros_ec_get_num_fans(struct cros_ec_device *ec)
{
	struct ec_response_get_features r;
	int idx, rv;
	u16 val;

	/* Check if EC is built with CONFIG_PWM_MAN via feature API */
	rv = cros_ec_thermal_command(ec, EC_CMD_GET_FEATURES, 0, NULL, 0, &r, sizeof(r));
	if (rv == 0 && !(r.flags[0] & BIT(EC_FEATURE_PWM_FAN)))
		return 0;

	for (idx = 0; idx < EC_FAN_SPEED_ENTRIES; idx++) {
		rv = ec->cmd_readmem(ec, EC_MEMMAP_FAN + 2 * idx, sizeof(val), &val);
		if (rv < 0 || val == EC_FAN_SPEED_NOT_PRESENT)
			break;
	}

	return idx;
}

static int cros_ec_get_num_temp_sensors(struct cros_ec_device *ec)
{
	struct ec_response_get_features r;
	int idx, idx_b, rv;
	u8 val;

	/* Check if EC is built with CONFIG_THERMAL via feature API */
	rv = cros_ec_thermal_command(ec, EC_CMD_GET_FEATURES, 0, NULL, 0, &r, sizeof(r));
	if (rv == 0 && !(r.flags[0] & BIT(EC_FEATURE_THERMAL)))
		return 0;

	for (idx = 0; idx < EC_TEMP_SENSOR_ENTRIES; idx++) {
		rv = ec->cmd_readmem(ec, EC_MEMMAP_TEMP_SENSOR + 1 * idx, sizeof(val), &val);
		if (rv < 0 || val == EC_TEMP_SENSOR_NOT_PRESENT)
			break;
	}

	for (idx_b = 0; idx_b < EC_TEMP_SENSOR_B_ENTRIES; idx_b++) {
		rv = ec->cmd_readmem(ec, EC_MEMMAP_TEMP_SENSOR_B + 1 * idx_b, sizeof(val), &val);
		if (rv < 0 || val == EC_TEMP_SENSOR_NOT_PRESENT)
			break;
	}

	return idx + idx_b;
}

static int cros_ec_thermal_probe(struct platform_device *pdev)
{
	struct cros_ec_device *ec = dev_get_drvdata(pdev->dev.parent);
	int err, idx, num_fans, num_temp_sensors;
	struct cros_ec_thermal_core *core;

	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
	if (!core)
		return -ENOMEM;
	core->dev = &pdev->dev;
	core->ec = ec;

	num_fans = cros_ec_get_num_fans(ec);
	num_temp_sensors = cros_ec_get_num_temp_sensors(ec);

	for (idx = 0; idx < num_temp_sensors; ++idx) {
		err = cros_ec_thermal_zone_init(core, &core->tzds[idx], idx);
		if (err)
			dev_err(&pdev->dev, "Failed to allocate TZ %d\n", idx);
	}

	for (idx = 0; idx < num_fans; ++idx) {
		err = cros_ec_thermal_fan_init(core, &core->cdevs[idx], idx);
		if (err)
			dev_err(&pdev->dev, "Failed to allocate fan\n");
	}

	return 0;
}

static int cros_ec_thermal_remove(struct platform_device *pdev)
{
	return 0;
}

#ifdef CONFIG_OF
static const struct of_device_id cros_ec_thermal_of_match[] = {
	{ .compatible = "google,cros-ec-thermal" },
	{ },
};
MODULE_DEVICE_TABLE(of, cros_ec_thermal_of_match);
#endif

static struct platform_driver cros_ec_thermal_driver = {
	.probe = cros_ec_thermal_probe,
	.remove = cros_ec_thermal_remove,
	.driver = {
		.name = "cros-ec-thermal",
		.of_match_table = of_match_ptr(cros_ec_thermal_of_match),
	},
};
module_platform_driver(cros_ec_thermal_driver);

MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("ChromeOS EC Thermal driver");
MODULE_ALIAS("platform:cros-ec-thermal");
MODULE_AUTHOR("Moritz Fischer <mdf@kernel.org>");
