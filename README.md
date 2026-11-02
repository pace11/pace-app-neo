<h1 align="center">NEO PACE APP 🔩</h1>
<p align="center">Docker Compose setup for running backend, frontend, databases (MySQL & PostgreSQL), NGINX, and other self-hosted services in a scalable, modular environment.</p>

## 🧰 Running Service

- **Docker Compose**
- **Nginx (Reverse Proxy)**
- **PostgreSQL**
- **MySQL**
- **Redis**
- **NGINX**
- **Backend Service (Go, Ts, Graphql, PHP)**
- **Frontend (Next.js)**
- **Minio (Object Storage)**
- **Outline (Web Blog)**
- **Vaultwarden**
- **WAHA** (WhatsApp HTTP API)
- **Cloudflare Tunnel**

## 📁 Folder Structure

- `/nginx` - Reverse proxy configurations
- `/mysql` - MySQL data or init scripts
- `/postgres` - PostgreSQL data or init scripts
- `/waha` - WAHA env, sessions, and media
- `.env.example` - Environment variable template
- `all-script.sh` - Utility script for setup or integration
- `docker-compose.yml` - Main service orchestrator

## 🚀 Getting Started

1. **Copy `.env.example`** to `.env` and configure environment variables.
2. **Run Docker Compose:**
   ```bash
   docker-compose up -d
   ```

## 📲 WAHA + Cloudflare Tunnel

1. Ensure `waha/.env` exists (credentials are generated locally; regenerate if needed):
   ```bash
   docker run --rm -v "$(pwd)/waha":/app/env --platform linux/amd64 devlikeapro/waha init-waha /app/env
   ```
   On Apple Silicon / ARM hosts the compose image is `devlikeapro/waha:arm`.
2. Set `WAHA_PUBLIC_URL` / hostname in `waha/.env` to your tunnel domain.
3. Create a tunnel in Cloudflare Zero Trust → Networks → Tunnels.
4. Put the Docker token into root `.env` as `CF_TUNNEL_TOKEN`.
5. In the tunnel Public Hostname, set service to `http://waha:3000`.
6. Start services:
   ```bash
   docker compose up -d waha cloudflared
   ```
7. Open local dashboard: `http://127.0.0.1:3000/dashboard` (or the public tunnel URL).
