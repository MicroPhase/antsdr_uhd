#!/bin/bash
set -euo pipefail
PRODUCT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
exec "${PRODUCT_DIR}/../scripts/export_current_project_scripts.sh" \
    --product-dir "${PRODUCT_DIR}" --target e200 "$@"
