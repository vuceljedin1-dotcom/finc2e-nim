# FinC2E NIM – Quickstart

## 1) Create .env
Copy `.env.example` to `.env` and set:
- `NGC_API_KEY` (Personal NGC API key starting with `nvapi-`)

## 2) Start
```bash
chmod +x scripts/*.sh
./scripts/up.sh

## 3) Verify
./scripts/healthcheck.sh
docker logs --tail=100 finc2e-nim

## 4) Stop
./scripts/down.sh

