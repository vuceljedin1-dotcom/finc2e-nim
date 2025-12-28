# Quickstart (FinC2E NIM)

## 1) Clone & env
```bash
git clone <your-repo-url>
cd finc2e-nim
cp .env.example .env
nano .env

2) Put adapter locally (optional)

Place your adapter files into:
./adapters/finc2e_adapter/

3) Run
make up

4) Logs
make logs


---

## 13) `docs/TROUBLESHOOTING.md` (copy-paste)
```md
# Troubleshooting

## Docker login "Cannot perform an interactive login from a non TTY device"
Use:
```bash
echo "$NGC_API_KEY" | docker login nvcr.io -u '$oauthtoken' --password-stdin

401 Unauthorized when calling nvcr.io API

Ensure you used a Personal API Key (nvapi-...)

Ensure you used username: $oauthtoken

Re-run make login

403/Denied on docker pull

Common causes:

key has no access / expired

you didn't accept the NIM EULA for that image (some NGC artifacts require acceptance)

wrong image path

docker search returns 404

NVCR doesn't support docker search for private registry namespaces. Use exact image names.
