# ANTSDR E200/E310V2 固件构建

[English](README.md) | 简体中文

本目录用于构建 ANTSDR E200 和 E310V2 的完整启动固件，包括：

- FPGA bitstream 和硬件描述 HDF
- FSBL 与 U-Boot
- Linux kernel 和设备树
- Buildroot rootfs
- 可直接复制到 SD 卡 FAT 分区的启动文件

当前流程使用 Vivado/SDK 2019.1，FPGA 工程由受版本控制的 Tcl、RTL、XCI
和 XDC 重新创建。Vivado 的 `.xpr`、`.runs`、`.srcs` 等生成目录不纳入 Git。

## 构建环境

推荐使用 Ubuntu，并安装基础依赖：

```sh
sudo apt-get update
sudo apt-get install -y \
    git build-essential fakeroot ccache bc bison flex \
    libncurses5-dev libssl-dev libtinfo5 \
    cpio zip unzip rsync file wget mtools \
    device-tree-compiler u-boot-tools
```

默认工具位置为：

```text
/opt/Xilinx/Vivado/2019.1
/opt/Xilinx/SDK/2019.1
```

通常不需要设置 `XILINX_ROOT`，构建脚本默认使用 `/opt/Xilinx`。如果
Xilinx 安装在其他目录，可以设置统一的根目录：

```sh
export XILINX_ROOT=/path/to/Xilinx
```

如果 Vivado 和 SDK 位于不同目录，也可以直接分别指定下面的路径：

```sh
export VIVADO_SETTINGS=/path/to/Vivado/2019.1/settings64.sh
export SDK_SETTINGS=/path/to/SDK/2019.1/settings64.sh
export TOOLCHAIN_BIN=/path/to/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin
```

## 一键生成 SD 启动镜像

在仓库中执行：

```sh
cd firmware

# E200（默认目标）
scripts/build_image.sh e200

# E310V2
scripts/build_image.sh e310v2
```

脚本会自动加载 Xilinx 环境、配置 ARM 交叉编译器并执行完整构建。默认行为是：

1. 优先复用 `fpga/antsdr_<target>/artifacts/system_top.hdf`。
2. 如果新目录没有 HDF，则兼容使用旧 Vivado 工程 SDK 目录中的 HDF。
3. 如果没有任何可用 HDF，自动从受版本控制的 FPGA 脚本构建 bit/HDF。
4. 构建 U-Boot、Linux、设备树、rootfs、FSBL 和 BOOT.bin。
5. 将最终启动文件写入 `firmware/build_sdimg/`。

需要确保镜像包含最新 FPGA 源码时，强制重新生成 FPGA：

```sh
scripts/build_image.sh e200 --rebuild-fpga
scripts/build_image.sh e310v2 --rebuild-fpga
```

可以指定并行任务数：

```sh
scripts/build_image.sh e200 --rebuild-fpga -j 8
```

## 使用 Makefile 构建

如果已经手动加载工具环境，也可以直接使用 Makefile：

```sh
source /opt/Xilinx/SDK/2019.1/settings64.sh
source /opt/Xilinx/Vivado/2019.1/settings64.sh
export PATH=/opt/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:$PATH
export CROSS_COMPILE=arm-linux-gnueabihf-

cd firmware
make TARGET=e200 image
make TARGET=e310v2 image
```

常用目标：

| 命令 | 作用 |
|---|---|
| `make TARGET=e200 image` | 生成完整 SD 启动文件，复用已有 HDF |
| `make TARGET=e200 all` | 生成 `build/` 中间产物，不整理 SD 目录 |
| `make TARGET=e200 fpga-project` | 仅从 Tcl 重新创建 Vivado 工程 |
| `make TARGET=e200 fpga-bitstream` | 重新生成 FPGA bit/HDF |
| `make TARGET=e200 fpga-export-current` | 导出当前已保存的 GUI 工程状态 |
| `make TARGET=e200 clean-build` | 删除固件 `build/` 和 `build_sdimg/` |

`TARGET=e310v2` 的行为完全相同。

## FPGA 工程开发流程

### 从受控源码重新创建工程

```sh
cd firmware/fpga/antsdr_e200
scripts/recreate_vivado_project.sh
```

工程生成到：

```text
vivado/project/antsdr_e200/antsdr_e200.xpr
```

该目录是 Vivado 工作目录，不提交到 Git。

### 从当前 GUI 工程导出修改

在 Vivado 中保存 Project 和 Block Design 后执行：

```sh
cd firmware/fpga/antsdr_e200

# 只导出到 ignored 的 generated/，不修改受控文件
scripts/export_current_project_scripts.sh

# 检查 generated/ 后，将当前工程状态应用到受控 Tcl
scripts/export_current_project_scripts.sh --apply
```

默认优先从旧 GUI 工程导出：

```text
antsdr_e200/antsdr_e200.xpr
```

也可以明确指定工程，避免导出错对象：

```sh
scripts/export_current_project_scripts.sh \
    --project /absolute/path/to/antsdr_e200.xpr
```

导出内容包括：

```text
scripts/vivado/generated/e200_ps_bd.tcl
scripts/vivado/generated/create_e200_sources.tcl
scripts/vivado/generated/PROJECT_STATE.txt
```

使用 `--apply` 后会更新：

```text
bd/e200_ps_bd.tcl
scripts/vivado/create_e200_sources.tcl
```

随后应重新创建工程并确认等价性：

```sh
scripts/recreate_vivado_project.sh
```

E310V2 使用 `firmware/fpga/antsdr_e310v2/` 下的同名脚本。

更完整的 FPGA 源码管理说明见 [fpga/README.md](fpga/README.md)。

## 构建产物

完整镜像生成后，`build_sdimg/` 应包含：

```text
BOOT.bin
antsdr.bit
uImage
uEnv.txt
devicetree.dtb
uramdisk.image.gz
```

将这些文件复制到 SD 卡的 FAT32 启动分区即可。当前 rootfs 作为
`uramdisk.image.gz` 从启动分区加载，不需要再另外解压到 ext4 分区。

主要中间产物位于：

```text
build/system_top.hdf
build/system_top.bit
build/fsbl.elf
build/u-boot.elf
build/uImage
build/device_tree.dtb
build/rootfs.cpio.gz
build/BOOT.bin
```

FPGA 发布产物位于：

```text
fpga/antsdr_e200/artifacts/
fpga/antsdr_e310v2/artifacts/
```

## 启动和网络

将 SD 卡设为启动介质后上电。系统默认以太网地址为：

```text
192.168.1.10/24
```

当前启动文件中的 FPGA 名称固定为 `antsdr.bit`，应与 `uEnv.txt` 中的
`bitstream_image=antsdr.bit` 保持一致。
