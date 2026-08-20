#!/bin/bash
# Source this file from an ANTSDR FPGA build wrapper.
if command -v vivado >/dev/null 2>&1; then
    return 0
fi

VIVADO_VERSION="${XILINX_VERSION:-2019.1}"
VIVADO_SETTINGS_FILE="${VIVADO_SETTINGS_FILE:-/opt/Xilinx/Vivado/${VIVADO_VERSION}/settings64.sh}"
if [ ! -f "${VIVADO_SETTINGS_FILE}" ]; then
    echo "missing Vivado settings file: ${VIVADO_SETTINGS_FILE}" >&2
    return 1
fi
# shellcheck disable=SC1090
source "${VIVADO_SETTINGS_FILE}"
