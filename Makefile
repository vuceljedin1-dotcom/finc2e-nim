.PHONY: help env login pull up down logs ps

help:
	@echo "Targets:"
	@echo "  make env    - create .env from .env.example"
	@echo "  make login  - login to nvcr.io using NGC_API_KEY"
	@echo "  make pull   - pull NIM image"
	@echo "  make up     - start service"
	@echo "  make down   - stop service"
	@echo "  make logs   - follow logs"
	@echo "  make ps     - list containers"

env:
	@test -f .env || cp .env.example .env
	@echo ".env ready (edit it and paste your key)."

login:
	@bash scripts/login_ngc.sh

pull:
	@bash scripts/pull_nim.sh

up:
	@bash scripts/up.sh

down:
	@bash scripts/down.sh

logs:
	@docker logs -f finc2e-nim

ps:
	@docker ps

