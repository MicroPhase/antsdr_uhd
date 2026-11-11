#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_FILE="${PRODUCT_DIR}/vivado/project/antsdr_u220_100t/antsdr_u220_100t.xpr"
ARTIFACT_DIR="${PRODUCT_DIR}/artifacts"
source "${PRODUCT_DIR}/../scripts/vivado_env.sh"
vivado -mode batch -source "${PRODUCT_DIR}/../u220/scripts/vivado/export_u220_artifacts.tcl" \
    -tclargs "${PROJECT_FILE}" "${ARTIFACT_DIR}"
