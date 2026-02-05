#!/usr/bin/env python3
import platform, socket, datetime, os, json

data = {
    "hostname": socket.gethostname(),
    "time": datetime.datetime.now().isoformat(),
    "platform": platform.platform(),
    "python": platform.python_version(),
    "env_sample": {k: os.environ.get(k) for k in ["PATH", "USER", "SHELL"]},
}
print(json.dumps(data, indent=2, ensure_ascii=False))
