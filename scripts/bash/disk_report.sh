#!/usr/bin/env bash
set -euo pipefail
echo "== df -hT =="
df -hT
echo
echo "== lsblk =="
lsblk
