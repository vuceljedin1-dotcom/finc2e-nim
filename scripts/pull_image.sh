#!/usr/bin/env bash
set -euo pipefail

bash scripts/login_ngc.sh
echo "Pulling NIM image..."
docker pull nvcr.io/nvidia/nim/meta/llama-3.3-70b-instruct:latest
echo "Pull done."
