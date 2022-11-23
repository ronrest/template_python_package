#!/bin/bash
# ##############################################################################
# CHECK FORMATTING STYLE
#
# Runs the black formatter. If code does not conform to formatting style, then
# it exits with a non-zero status and prints out where the style does not 
# conform.
#
# ##############################################################################
set -euo pipefail

# Get directory of current script
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
PACKAGE_DIR=$( dirname -- "${SCRIPT_DIR}" )

cd "${PACKAGE_DIR}"

echo "CHECKING FORMATTING STYLE"
python -m black --check --diff --color ./
