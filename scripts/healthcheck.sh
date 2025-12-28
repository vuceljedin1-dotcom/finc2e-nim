#!/usr/bin/env bash
set -euo pipefail

# Basic check (adjust endpoint to match your NIM)
# If NIM exposes /v1/models or /health, use that.
curl -fsS http://localhost:8000/health >/dev/null 2>&1 || exit 1
echo "ok"
