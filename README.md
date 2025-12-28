# FinC2E NIM — Production-Ready NVIDIA Inference Microservice

**FinC2E NIM** is a production-ready NVIDIA Inference Microservice (NIM) designed for
**governance-first, audit-ready, and deterministic AI inference** in regulated environments
(finance, compliance, security, defense).

It is a core building block of:

> **BPM RED Academy → MightHub → FinC2E Stack**

---

## What This Repository Is

- A **clean, deployable NIM wrapper**
- Adapter-based (LoRA / fine-tuned weights)
- Ready for **NVIDIA NGC, Brev, DGX, GB200**
- Docker-native, cloud & on-prem friendly
- Designed for **future MoE orchestration**

---

## High-Level Architecture

BPM RED Academy
└── MightHub (orchestration layer)
└── FinC2E NIM (this repo)
├── Base NVIDIA NIM image
├── FinC2E Adapter (LoRA / domain logic)
├── Runtime configs
└── Governance & observability hooks

This repo represents **one deployable inference unit** inside a larger
HumAI / MoE ecosystem.

---

## Repository Structure

finc2e-nim/
├── adapters/
│ └── finc2e_adapter/ # 🔒 Local adapter (NOT committed)
│ └── .gitkeep
├── configs/ # Optional runtime configs
├── docs/
│ ├── QUICKSTART.md
│ └── TROUBLESHOOTING.md
├── scripts/ # Helper scripts (login, pull, run)
├── docker-compose.yml
├── .env.example
├── .gitignore
├── GOVERNANCE.md
├── CHANGELOG.md
├── LICENSE
└── README.md

---

## Prerequisites

- NVIDIA GPU (A100 / H100 / GB200 recommended)
- Docker + NVIDIA Container Runtime
- NVIDIA NGC account & API key
- Optional: Brev.dev or DGX Cloud

---

## Quick Start

### 1️⃣ Clone repository

```bash
git clone https://github.com/vuceljedin1-dotcom/finc2e-nim.git
cd finc2e-nim

2️⃣ Configure environment
cp .env.example .env

Edit .env:
NGC_API_KEY=nvapi-xxxxxxxxxxxxxxxx
NVIDIA_VISIBLE_DEVICES=all

3️⃣ Login to NVIDIA NGC
echo "$NGC_API_KEY" | docker login nvcr.io -u '$oauthtoken' --password-stdin

4️⃣ Start FinC2E NIM
docker compose up -d

5️⃣ Verify health
docker ps
curl http://localhost:8000/health

Adapter Model (Important)

Adapters are intentionally excluded from Git:
adapters/finc2e_adapter/

You must provide:

adapter_model.safetensors

adapter_config.json

Optional domain configs

This ensures:

IP protection

Clean open-source wrapper

Private enterprise deployment

Governance & Compliance

See:

GOVERNANCE.md

CHANGELOG.md

FinC2E is built for:

Audit-ready inference

Deterministic behavior

Model traceability

Deployment accountability

License

This project is licensed under the BSD 3-Clause License.

You are free to:

Use

Modify

Distribute

Commercialize

With attribution and without endorsement misuse.

Status

Production-ready wrapper
Validated on NVIDIA ecosystem
Prepared for NGC & Brev launch

Author

Edin Vučelj
Founder — BPM RED Academy / MightHub
Military-grade Human-Centered AI Systems
