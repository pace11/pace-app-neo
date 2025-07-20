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

## 📁 Folder Structure

- `/nginx` - Reverse proxy configurations
- `/mysql` - MySQL data or init scripts
- `/postgres` - PostgreSQL data or init scripts
- `.env.example` - Environment variable template
- `all-script.sh` - Utility script for setup or integration
- `docker-compose.yml` - Main service orchestrator

## 🚀 Getting Started

1. **Copy `.env.example`** to `.env` and configure environment variables.
2. **Run Docker Compose:**
   ```bash
   docker-compose up -d
