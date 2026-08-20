#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "${PRODUCT_DIR}/../scripts/vivado_env.sh"
vivado -mode batch -source "${PRODUCT_DIR}/scripts/vivado/create_e310v2_project.tcl"
