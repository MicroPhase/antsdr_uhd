# ANTSDR E200/E310V2 Firmware Build

English | [简体中文](README_CN.md)

This directory builds complete boot firmware for ANTSDR E200 and E310V2,
including:

- FPGA bitstream and HDF hardware definition
- FSBL and U-Boot
- Linux kernel and device tree
- Buildroot root filesystem
- Files ready to copy to the SD card FAT partition

The current flow uses Vivado/SDK 2019.1. FPGA projects are recreated from
version-controlled Tcl, RTL, XCI, and XDC files. Generated Vivado directories
such as `.xpr`, `.runs`, and `.srcs` are not tracked by Git.

## Build environment

Ubuntu is recommended. Install the basic dependencies:

```sh
sudo apt-get update
sudo apt-get install -y \
    git build-essential fakeroot ccache bc bison flex \
    libncurses5-dev libssl-dev libtinfo5 \
    cpio zip unzip rsync file wget mtools \
    device-tree-compiler u-boot-tools
```

The default Xilinx installation paths are:

```text
/opt/Xilinx/Vivado/2019.1
/opt/Xilinx/SDK/2019.1
```

You normally do not need to set `XILINX_ROOT`. The build script uses
`/opt/Xilinx` by default. If the installation is elsewhere, either set the
common root:

```sh
export XILINX_ROOT=/path/to/Xilinx
```

or override the individual paths directly (useful when Vivado and SDK are
installed in different locations):

```sh
export VIVADO_SETTINGS=/path/to/Vivado/2019.1/settings64.sh
export SDK_SETTINGS=/path/to/SDK/2019.1/settings64.sh
export TOOLCHAIN_BIN=/path/to/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin
```

for example:
```sh
export VIVADO_SETTINGS=/opt/Xilinx/Vivado/2019.1/settings64.sh
export SDK_SETTINGS=/opt/Xilinx/SDK/2019.1/settings64.sh
export TOOLCHAIN_BIN=/opt/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin
```

## One-command SD boot image build

Run the following from the repository:

```sh
cd firmware

# E200 (default target)
scripts/build_image.sh e200

# E310V2
scripts/build_image.sh e310v2
```

The script loads the Xilinx environment, configures the ARM cross compiler,
and performs the complete build. By default, it:

1. Reuses `fpga/antsdr_<target>/artifacts/system_top.hdf` when available.
2. Falls back to an HDF in the legacy Vivado project SDK directory.
3. Builds the FPGA bitstream/HDF from the tracked project scripts if no HDF
   is available.
4. Builds U-Boot, Linux, the device tree, rootfs, FSBL, and BOOT.bin.
5. Writes the final boot files to `firmware/build_sdimg/`.

To guarantee that the image contains the latest tracked FPGA sources, force
an FPGA project recreation and rebuild:

```sh
scripts/build_image.sh e200 --rebuild-fpga
scripts/build_image.sh e310v2 --rebuild-fpga
```

The parallel job count can be specified explicitly:

```sh
scripts/build_image.sh e200 --rebuild-fpga -j 8
```

## Building with Make

If the tool environment has already been loaded manually, invoke Make
directly:

```sh
source /opt/Xilinx/SDK/2019.1/settings64.sh
source /opt/Xilinx/Vivado/2019.1/settings64.sh
export PATH=/opt/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:$PATH
export CROSS_COMPILE=arm-linux-gnueabihf-

cd firmware
make TARGET=e200 image
make TARGET=e310v2 image
```

Common targets:

| Command | Description |
|---|---|
| `make TARGET=e200 image` | Build the complete SD boot files, reusing an existing HDF |
| `make TARGET=e200 all` | Build intermediates under `build/` without assembling the SD directory |
| `make TARGET=e200 fpga-project` | Recreate only the Vivado project from Tcl |
| `make TARGET=e200 fpga-bitstream` | Recreate the project and rebuild the FPGA bitstream/HDF |
| `make TARGET=e200 fpga-export-current` | Export the currently saved GUI project state |
| `make TARGET=e200 clean-build` | Remove firmware `build/` and `build_sdimg/` |

The same targets support `TARGET=e310v2`.

## FPGA development workflow

### Recreate a project from tracked sources

```sh
cd firmware/fpga/antsdr_e200
scripts/recreate_vivado_project.sh
```

The project is generated at:

```text
vivado/project/antsdr_e200/antsdr_e200.xpr
```

This is an untracked Vivado working directory.

### Export changes from a current GUI project

Save both the project and Block Design in Vivado, then run:

```sh
cd firmware/fpga/antsdr_e200

# Export to the ignored generated/ directory without changing tracked files
scripts/export_current_project_scripts.sh

# After reviewing generated/, apply the current state to the tracked Tcl files
scripts/export_current_project_scripts.sh --apply
```

By default, the exporter prefers the legacy GUI project:

```text
antsdr_e200/antsdr_e200.xpr
```

Specify a project explicitly when needed to avoid exporting the wrong one:

```sh
scripts/export_current_project_scripts.sh \
    --project /absolute/path/to/antsdr_e200.xpr
```

The review output contains:

```text
scripts/vivado/generated/e200_ps_bd.tcl
scripts/vivado/generated/create_e200_sources.tcl
scripts/vivado/generated/PROJECT_STATE.txt
```

Running with `--apply` updates:

```text
bd/e200_ps_bd.tcl
scripts/vivado/create_e200_sources.tcl
```

Recreate the project afterward to verify that the exported state is
reproducible:

```sh
scripts/recreate_vivado_project.sh
```

E310V2 provides the same scripts under
`firmware/fpga/antsdr_e310v2/`.

See [fpga/README.md](fpga/README.md) for more details about FPGA source and
project management.

## Build artifacts

After a complete image build, `build_sdimg/` contains:

```text
BOOT.bin
antsdr.bit
uImage
uEnv.txt
devicetree.dtb
uramdisk.image.gz
```

Copy these files to the SD card FAT32 boot partition. The current rootfs is
loaded from the boot partition as `uramdisk.image.gz`; it does not need to be
extracted to a separate ext4 partition.

The main intermediate artifacts are:

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

FPGA release artifacts are stored under:

```text
fpga/antsdr_e200/artifacts/
fpga/antsdr_e310v2/artifacts/
```

## Boot and network

Select the SD card as the boot source and power on the device. The default
Ethernet address is:

```text
192.168.1.10/24
```

The FPGA file in the boot partition is named `antsdr.bit`; this must match
`bitstream_image=antsdr.bit` in `uEnv.txt`.
