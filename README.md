# ansible-scripts-project

Plantilla para ejecutar scripts (bash/python/etc.) en hosts remotos usando Ansible.

## Requisitos
- Ansible instalado en tu máquina (control node)
- Acceso SSH a los hosts del inventario

## Configurar inventario
Edita `inventory/hosts.ini` y agrega tus hosts.

## Ejecutar un script puntual
```bash
ansible-playbook playbooks/run_script.yml -l srv1 -e script="bash/hello.sh"
```

## Ejecutar script con args
```bash
ansible-playbook playbooks/run_script.yml -l srv1 -e script="bash/disk_report.sh" -e script_args="--help"
```

## Ejecutar un script python (instala python3 si hace falta)
```bash
ansible-playbook playbooks/run_script.yml -l srv1 -e script="python/sysinfo.py" -e ensure_python3=true
```

## Ejecutar un set
```bash
ansible-playbook playbooks/run_set.yml -l linux -e set_name=baseline
ansible-playbook playbooks/run_set.yml -l linux -e set_name=sysinfo
```

## Dónde quedan los logs en el host
Por defecto:
- scripts: `/opt/ops/scripts`
- logs: `/var/log/ops-scripts`

Cambia en `inventory/group_vars/all.yml`.
