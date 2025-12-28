#!/usr/bin/env bash
set -euo pipefail

PORT="${NIM_PORT:-8000}"
echo "Checking http://localhost:${PORT}/health ..."
curl -sS "http://localhost:${PORT}/health" || true
echo

