# Role: script_runner

Ejecuta scripts desde `./scripts/` en hosts remotos de forma controlada:
- Copia a `remote_scripts_dir`
- Ejecuta con args/env/workdir
- Guarda logs en `remote_logs_dir`

## Variables
- `script` (obligatoria): ej `bash/hello.sh`
- `script_args`: string con argumentos
- `script_env`: dict de variables de entorno
- `script_workdir`: directorio de trabajo
- `ensure_python3`: instala python3 si hace falta

## Ejemplo
```bash
ansible-playbook playbooks/run_script.yml -l srv1 -e script="bash/hello.sh"
```
