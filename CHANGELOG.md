# Changelog

All notable changes to this project will be documented in this file.

This project follows a **governance-first, production-oriented release model**.
Versions reflect **operational readiness**, not marketing milestones.

---

## [0.1.0] — 2025-12-28

### Added
- Initial public release of **FinC2E-NIM**
- NVIDIA-native inference runtime design (NIM-oriented)
- Docker Compose–based reproducible deployment
- Governance-first architecture documentation
- Secure NGC authentication flow (no secrets in repo)
- Quickstart and troubleshooting documentation
- Explicit separation of:
  - runtime
  - model artifacts
  - adapters
  - secrets

### Proven
- Deterministic container startup
- GPU-aware deployment readiness
- Audit-friendly inference lifecycle
- Compatibility with external adapters (LoRA / PEFT)

### Not Included (by design)
- No proprietary model weights
- No adapters committed to repository
- No API keys or credentials

---

## [Unreleased]
- Orchestration routing layer (MightHub)
- Evaluation harness for AML / high-risk scenarios
- Multi-NIM orchestration (FinC2E + DEA_NEMO + others)

