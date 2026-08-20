#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_FILE="${PRODUCT_DIR}/vivado/project/antsdr_e200/antsdr_e200.xpr"
ARTIFACT_DIR="${PRODUCT_DIR}/artifacts"
source "${PRODUCT_DIR}/../scripts/vivado_env.sh"
vivado -mode batch -source "${PRODUCT_DIR}/../scripts/vivado/export_artifacts.tcl" \
    -tclargs "${PROJECT_FILE}" "${ARTIFACT_DIR}"
