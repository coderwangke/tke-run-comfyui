#!/bin/bash

set -Eeuo pipefail

source /etc/profile

CLI_ARGS="${CLI_ARGS:---listen 0.0.0.0 --port 8188}"
EXTRA_ARGS="${EXTRA_ARGS:-}"

export ARGS="${CLI_ARGS} ${EXTRA_ARGS}"

echo "args: $ARGS"

export PYTHONPATH="${COMFYUI}:${PYTHONPATH:-}"

python3 ${COMFYUI}/main.py ${ARGS}