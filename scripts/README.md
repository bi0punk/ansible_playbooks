# Carpeta scripts/

Deja aquí tus scripts (bash/python/lo que sea). Se ejecutan con:
- `playbooks/run_script.yml` (uno puntual)
- `playbooks/run_set.yml` (un set)

Recomendación:
- scripts bash con `set -euo pipefail`
- salida a stdout/err (Ansible la guarda en /var/log/ops-scripts)
