#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_FILE="${PRODUCT_DIR}/vivado/project/antsdr_e310v2/antsdr_e310v2.xpr"
JOBS="${JOBS:-6}"
source "${PRODUCT_DIR}/../scripts/vivado_env.sh"
if [ ! -f "${PROJECT_FILE}" ]; then
    "${PRODUCT_DIR}/scripts/recreate_vivado_project.sh"
fi
vivado -mode batch -source "${PRODUCT_DIR}/../scripts/vivado/build_bitstream.tcl" \
    -tclargs "${PROJECT_FILE}" "${JOBS}"
"${PRODUCT_DIR}/scripts/export_artifacts.sh"
