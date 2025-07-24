#!/bin/bash

set -Eeuo pipefail

source /etc/profile

CLI_ARGS="${CLI_ARGS:---listen 0.0.0.0 --port 9000 --input-directory ${CFS_DIR}/input --output-directory ${CFS_DIR}/output --temp-directory ${CFS_DIR}/output}"
EXTRA_ARGS="${EXTRA_ARGS:-}"

export ARGS="${CLI_ARGS} ${EXTRA_ARGS}"

echo "args: $ARGS"

export PYTHONPATH="${COMFYUI}:${PYTHONPATH:-}"

python3 ${COMFYUI}/main.py ${ARGS}