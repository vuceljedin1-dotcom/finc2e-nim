
## `docs/TROUBLESHOOTING.md`
```md
# Troubleshooting

## docker login succeeded, but docker pull gives DENIED/401
- Ensure you're using **Personal API Key** (`nvapi-...`)
- Username must be exactly: `$oauthtoken`
- Pull official image first: `nvcr.io/nvidia/nim/...`
- If using private org registry, confirm org permissions and correct namespace.

## "Cannot perform an interactive login from a non TTY device"
- Use password-stdin:
```bash
echo "$NGC_API_KEY" | docker login nvcr.io -u '$oauthtoken' --password-stdin

