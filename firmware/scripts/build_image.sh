#!/bin/bash
set -euo pipefail

FIRMWARE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="e200"
REBUILD_FPGA=0
JOBS="${JOBS:-$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 6)}"

usage() {
    cat <<'EOF'
usage: scripts/build_image.sh [e200|e310v2] [options]

Builds a complete SD-card boot image into firmware/build_sdimg/.

Options:
  --rebuild-fpga  Recreate/rebuild the FPGA project and export a fresh HDF.
  -j, --jobs N    Parallel build jobs (default: number of online CPUs).
  -h, --help      Show this help.

By default an existing exported HDF is reused. If no HDF exists, the FPGA
bitstream is built automatically from the tracked Tcl/source manifests.
EOF
}

while [ "$#" -gt 0 ]; do
    case "$1" in
        e200|e310v2)
            TARGET="$1"
            shift
            ;;
        --rebuild-fpga)
            REBUILD_FPGA=1
            shift
            ;;
        -j|--jobs)
            JOBS="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "unknown argument: $1" >&2
            usage >&2
            exit 2
            ;;
    esac
done

case "${JOBS}" in
    ''|*[!0-9]*|0)
        echo "invalid job count: ${JOBS}" >&2
        exit 2
        ;;
esac

XILINX_VERSION="${XILINX_VERSION:-2019.1}"
XILINX_ROOT="${XILINX_ROOT:-/opt/Xilinx}"
VIVADO_SETTINGS="${VIVADO_SETTINGS:-${XILINX_ROOT}/Vivado/${XILINX_VERSION}/settings64.sh}"
SDK_SETTINGS="${SDK_SETTINGS:-${XILINX_ROOT}/SDK/${XILINX_VERSION}/settings64.sh}"
TOOLCHAIN_BIN="${TOOLCHAIN_BIN:-${XILINX_ROOT}/SDK/${XILINX_VERSION}/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin}"

if [ ! -f "${VIVADO_SETTINGS}" ]; then
    echo "missing Vivado settings: ${VIVADO_SETTINGS}" >&2
    exit 1
fi
if [ ! -f "${SDK_SETTINGS}" ]; then
    echo "missing Xilinx SDK settings: ${SDK_SETTINGS}" >&2
    exit 1
fi
if [ ! -x "${TOOLCHAIN_BIN}/arm-linux-gnueabihf-gcc" ]; then
    echo "missing ARM cross compiler in: ${TOOLCHAIN_BIN}" >&2
    exit 1
fi

# shellcheck disable=SC1090
source "${SDK_SETTINGS}"
# shellcheck disable=SC1090
source "${VIVADO_SETTINGS}"
export PATH="${TOOLCHAIN_BIN}:${PATH}"
export CROSS_COMPILE="${CROSS_COMPILE:-arm-linux-gnueabihf-}"
export VIVADO_SETTINGS
export JOBS

echo "Building ANTSDR-${TARGET^^} firmware"
echo "  Vivado: ${VIVADO_SETTINGS}"
echo "  jobs:   ${JOBS}"

if [ "${REBUILD_FPGA}" -eq 1 ]; then
    echo "Rebuilding FPGA from tracked project scripts..."
    make -C "${FIRMWARE_DIR}/fpga/antsdr_${TARGET}" rebuild JOBS="${JOBS}"
fi

make -C "${FIRMWARE_DIR}" -j "${JOBS}" TARGET="${TARGET}" image

echo "SD-card image files are ready in:"
echo "  ${FIRMWARE_DIR}/build_sdimg"
