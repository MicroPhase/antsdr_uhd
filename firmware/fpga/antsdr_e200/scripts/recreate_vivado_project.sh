#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
# shellcheck source=../../scripts/vivado_env.sh
source "${PRODUCT_DIR}/../scripts/vivado_env.sh"
vivado -mode batch -source "${PRODUCT_DIR}/scripts/vivado/create_e200_project.tcl"
