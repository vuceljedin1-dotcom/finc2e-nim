#!/usr/bin/env bash
set -euo pipefail

bash scripts/pull_image.sh

echo "Starting service..."
docker compose up -d

echo "Containers:"
docker ps

echo "Tip: check logs with: docker logs -f finc2e-nim"
