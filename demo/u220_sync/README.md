# U220 GPS、PPS 和 10 MHz 测试

适用于使用本仓库 AntSDR UHD 4.9 驱动和对应 FPGA 镜像的 U220 200T、100T。
三个程序分别测试 GPS、PPS 和外部 10 MHz 参考锁定。

## 编译

先安装本仓库的 UHD 驱动。Ubuntu 还需要编译工具：

```sh
sudo apt install build-essential cmake pkg-config
```

在仓库根目录执行：

```sh
cd demo/u220_sync
mkdir -p build
cd build
cmake ..
make -j4
```

生成 `u220_test_gps`、`u220_test_pps` 和 `u220_test_10m`。
下面的命令都在这个 `build` 目录中执行，普通用户即可运行。

如果 CMake 找不到 UHD，先执行 `pkg-config --modversion uhd`。
默认安装在 `/usr/local` 时，可以这样重新配置：

```sh
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib64/pkgconfig cmake ..
make -j4
```

## 确认设备

连接 USB 并关闭占用设备的 GQRX、probe 等程序，然后执行：

```sh
uhd_find_devices --args="type=b200"
```

只有一台 U220 时，下面的测试会自动选择它。有多台设备时加上
`--args="type=b200,serial=实际序列号"`，序列号从上述命令输出读取。
程序按 EEPROM 中的 U220/U220V2 名称识别设备，不能直接用于普通 Ettus B210。

默认使用系统安装的 FPGA 镜像，100T 和 200T 要使用各自对应的 BIN。
如果想指定刚编译的 100T 镜像，可以这样运行 GPS 测试，无需覆盖系统 BIN：

```sh
./u220_test_gps --args="type=b200,fpga=../../../firmware/fpga/u220-100t/artifacts/antsdr_u220_100t.bin" --timeout 300 --hold 5
```

## GPS

接好 GPS 天线，放到能接收卫星信号的位置，然后运行：

```sh
./u220_test_gps --timeout 300 --hold 5
```

程序读取定位状态和 UTC，再检查 GPS PPS 和参考环路。
同时满足以下条件才输出 `PASS`：已定位，UTC 连续推进，至少 5 个连续 PPS
间隔约为 1 秒，GPS 定位及参考锁定在软件采样中保持至少 5 秒。
GPS 冷启动可能需要数分钟，超时后可以等待定位再重试。

## 外部 PPS

将外部 1 PPS 接入板卡对应的 PPS 输入接口，再运行：

```sh
./u220_test_pps --time-source external --timeout 180 --hold 5
```

`PASS` 表示观察到至少 5 个连续约 1 秒的 PPS 间隔，参考环路也满足 5 秒锁定判据。
只检查 GPS PPS 时使用 `--time-source gpsdo`；
不接外部信号、仅检查内部 PPS 计数路径时可运行：

```sh
./u220_test_pps --time-source internal --timeout 15
```

内部自检通过不代表外部 PPS 或 GPS 已锁定。

## 外部 10 MHz

将已知正常的 10 MHz 信号接入板卡对应的参考输入接口，再运行：

```sh
./u220_test_10m --timeout 180 --hold 5
```

`PASS` 表示 FPGA 返回的 `ref_locked` 在软件采样中保持至少 5 秒。
这不是频率计测量；外部信号的电平、接地和接线应符合板卡接口要求。

## 结果怎么看

- `PASS`：达到该项测试的判据，退出码为 0。
- `FAIL`：超时仍未满足判据，退出码为 1；检查接线、天线和锁定等待时间。
- `ERROR`：设备、驱动、传感器或参数错误，退出码为 2。
- Ctrl+C：停止测试，退出码为 130。

程序不进行 RF 收发、不写 EEPROM，也不把 FPGA 绝对时间设成 GPS UTC。
测试会切换参考源，结束时尝试恢复原设置。PPS 的周期容差为 ±5 ms，
通过不代表亚微秒同步精度，也不能用 GPS 测试结果代替外部 10 MHz 测试。

可用 `./u220_test_gps --help` 等命令查看参数。
运行 `ctest --output-on-failure` 可执行无需连接设备的判定逻辑和帮助命令自检。
