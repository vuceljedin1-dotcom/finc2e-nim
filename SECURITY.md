# Security Policy

## Reporting a Vulnerability
If you discover a security issue, please report it privately.

- Do NOT open a public GitHub issue for security vulnerabilities.
- Send details via a private message or email to the maintainer.

## Secrets & Credentials
- Never commit `.env` files or API keys (NGC, HF, cloud keys).
- Rotate NGC API keys regularly.
- Use least-privilege scopes and separate dev/staging/prod credentials.

## Model Artifacts
- This repository does not store proprietary weights or adapters.
- Adapters/weights must be provided via external storage and mounted at runtime.

## Supported Versions
We support the latest tagged release and main branch for security fixes.
