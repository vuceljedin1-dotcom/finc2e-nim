#!/usr/bin/env bash
set -euo pipefail

IMAGE="${NIM_IMAGE:-nvcr.io/nvidia/nim/meta/llama-3.3-70b-instruct:latest}"
echo "Pulling: ${IMAGE}"
docker pull "${IMAGE}"

