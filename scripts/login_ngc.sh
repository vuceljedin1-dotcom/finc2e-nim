#!/usr/bin/env bash
set -euo pipefail

if [ ! -f .env ]; then
  echo "Missing .env. Run: cp .env.example .env && edit .env"
  exit 1
fi

set -a
source .env
set +a

if [[ -z "${NGC_API_KEY:-}" ]]; then
  echo "NGC_API_KEY is empty. Put your Personal API Key into .env"
  exit 1
fi

echo "Logging in to nvcr.io ..."
# IMPORTANT: username must be EXACTLY "$oauthtoken"
echo "${NGC_API_KEY}" | docker login nvcr.io -u '$oauthtoken' --password-stdin
echo "Login OK."
