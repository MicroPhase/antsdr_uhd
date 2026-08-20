#!/bin/bash
set -euo pipefail

FPGA_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PRODUCT_DIR=""
TARGET=""
PROJECT_FILE=""
PROJECT_FILE_SET=0
OUT_DIR=""
APPLY=0

usage() {
    cat <<'EOF'
usage: export_current_project_scripts.sh --product-dir <dir> --target <name> [options]

Options:
  --project <xpr>   Export this saved Vivado project.
  --out-dir <dir>   Write review output here.
  --apply           Update the tracked BD Tcl and source manifest after export.
  -h, --help        Show this help.

Without --apply, tracked files are never changed. Save the project in Vivado
before exporting; unsaved GUI edits cannot be read by the batch process.
EOF
}

while [ "$#" -gt 0 ]; do
    case "$1" in
        --product-dir)
            PRODUCT_DIR="$2"
            shift 2
            ;;
        --target)
            TARGET="$2"
            shift 2
            ;;
        --project)
            PROJECT_FILE="$2"
            PROJECT_FILE_SET=1
            shift 2
            ;;
        --out-dir)
            OUT_DIR="$2"
            shift 2
            ;;
        --apply)
            APPLY=1
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "unknown option: $1" >&2
            usage >&2
            exit 2
            ;;
    esac
done

if [ -z "${PRODUCT_DIR}" ] || [ -z "${TARGET}" ]; then
    usage >&2
    exit 2
fi
PRODUCT_DIR="$(cd "${PRODUCT_DIR}" && pwd)"
OUT_DIR="${OUT_DIR:-${PRODUCT_DIR}/scripts/vivado/generated}"

if [ "${PROJECT_FILE_SET}" -eq 0 ]; then
    # Prefer the historical GUI project because that is where existing manual
    # edits live. Fall back to the newly recreated, script-managed project.
    LEGACY_PROJECT="${PRODUCT_DIR}/antsdr_${TARGET}/antsdr_${TARGET}.xpr"
    RECREATED_PROJECT="${PRODUCT_DIR}/vivado/project/antsdr_${TARGET}/antsdr_${TARGET}.xpr"
    if [ -f "${LEGACY_PROJECT}" ]; then
        PROJECT_FILE="${LEGACY_PROJECT}"
    elif [ -f "${RECREATED_PROJECT}" ]; then
        PROJECT_FILE="${RECREATED_PROJECT}"
    fi
fi

if [ ! -f "${PROJECT_FILE}" ]; then
    echo "missing Vivado project: ${PROJECT_FILE:-<not found>}" >&2
    echo "pass the current project explicitly with --project <file.xpr>" >&2
    exit 1
fi

echo "Exporting saved Vivado project state:"
echo "  ${PROJECT_FILE}"
source "${FPGA_DIR}/scripts/vivado_env.sh"
vivado -mode batch \
    -source "${FPGA_DIR}/scripts/vivado/export_current_project_scripts.tcl" \
    -tclargs "${PROJECT_FILE}" "${PRODUCT_DIR}" "${TARGET}" "${OUT_DIR}" "${APPLY}"
