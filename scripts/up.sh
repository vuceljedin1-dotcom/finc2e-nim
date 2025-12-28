#!/usr/bin/env bash
set -euo pipefail

if [ -f ".env" ]; then
  set -a
  source .env
  set +a
fi

./scripts/login_ngc.sh
./scripts/pull_image.sh

docker compose up -d
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

