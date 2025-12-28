#!/usr/bin/env bash
set -euo pipefail

if [ -z "${NGC_API_KEY:-}" ]; then
  echo "❌ NGC_API_KEY is not set. Create .env from .env.example and set NGC_API_KEY."
  exit 1
fi

echo "${NGC_API_KEY}" | docker login nvcr.io -u '$oauthtoken' --password-stdin
echo "✅ Logged in to nvcr.io"

