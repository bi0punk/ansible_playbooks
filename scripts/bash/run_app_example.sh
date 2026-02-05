#!/usr/bin/env bash
set -euo pipefail

# Ejemplo: lanzar/gestionar una app de forma simple
# Puedes adaptar a systemd, docker compose, etc.

APP_BIN="${APP_BIN:-/usr/bin/uptime}"
echo "Lanzando app de ejemplo: ${APP_BIN}"
"${APP_BIN}"
