<h1 align="center">PACE APP NEO 🔩</h1>
<p align="center">A containerized backend platform for managing services like Qurban integration with mosques across Indonesia. Built using Docker Compose, this project combines NGINX, PostgreSQL, and MySQL to support scalable and secure deployments.</p>

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
