#!/bin/bash
# ##############################################################################
# RECREATE THE REQUIREMENTS TXT FILES
#
# Recompiles the requirements.txt and requirements-dev.txt python dependency
# files.
#
# ##############################################################################
set -euo pipefail

# Get directory of current script
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
PACKAGE_DIR=$( dirname -- "${SCRIPT_DIR}" )

cd "${PACKAGE_DIR}"

echo "CREATING REQUIREMENTS.TXT"
pip-compile

echo "CREATING REQUIREMENTS-DEV.TXT"
pip-compile setup.py --extra dev -o requirements-dev.txt
