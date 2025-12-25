# FinC2E NIM

**FinC2E (Financial Cognitive Compliance Engine)**  
Production-ready deployment as an **NVIDIA NIM (Inference Microservice)**  
within **BPM RED Academy – HumAI MightHub**.

This repository is intentionally **clean, minimal, and deterministic**.
No weights, no secrets, no ambiguity.

---

## What this repository IS

- NVIDIA **NIM runtime orchestration**
- Secure **NGC authentication flow**
- Deterministic **GPU inference deployment**
- Adapter-ready (Hugging Face / LoRA / safetensors)
- Designed for **GB200 / Blackwell / NVIDIA-first environments**

---

## What this repository is NOT

- ❌ Not a training repository  
- ❌ Not a dataset repository  
- ❌ Not a place for secrets or API keys  
- ❌ Not a monolithic AI stack  

This is **pure inference infrastructure**.

---

## Architecture Overview



GitHub (this repository)
├─ Runtime orchestration (Docker / Compose)
├─ Secure NGC login flow
└─ Deterministic service lifecycle

Hugging Face
└─ FinC2E adapter (LoRA / safetensors)

NVIDIA NGC
└─ Base NIM image + optimized inference runtime


---

## Requirements

- NVIDIA GPU (GB200 / B200 / H100 / A100 compatible)
- Docker
- Docker Compose
- NVIDIA Container Toolkit
- NVIDIA NGC **Personal API Key**

---

## Repository Structure



finc2e-nim/
├── README.md
├── docker-compose.yml
├── .env.example
├── .gitignore
└── scripts/
├── login_ngc.sh
├── pull_nim.sh
└── up.sh


---

## Environment Variables

This project uses **local-only environment variables**.

Create a `.env` file (never committed):



NGC_API_KEY=nvapi-XXXXXXXXXXXXXXXXXXXXXXXX
NVIDIA_VISIBLE_DEVICES=all


---

## Quick Start

```bash
git clone <this-repository>
cd finc2e-nim

cp .env.example .env
nano .env          # paste your NGC Personal API Key

chmod +x scripts/*.sh
./scripts/up.sh


Service will be available on:
Service will be available on:

Security Model

🔐 No secrets stored in repository

🔐 No weights stored in repository

🔐 NGC authentication via $oauthtoken

🔐 .env explicitly ignored by Git

This repo is safe to be public or private.

Adapter Strategy (Planned)

Adapters are externalized and mounted at runtime:

Hugging Face for versioned adapters

Deterministic checksum loading

No vendor lock-in

Adapters are not part of this repo by design.

Philosophy

NVIDIA-first

Inference over training

Determinism over convenience

Clean repos scale — messy ones collapse

Ownership

BPM RED Academy – HumAI MightHub
FinC2E is part of a broader governance-first, human-centric AI system
designed for regulated and high-stakes environments.

© 2025 BPM RED Academy
All rights reserved.
