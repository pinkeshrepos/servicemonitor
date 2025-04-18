
---

## 🖥️ `monitor_services.sh` (Shell Script)

```bash
#!/bin/bash

# List of services to monitor
SERVICES=("nginx" "mysql" "ssh")

echo "🔍 Checking services status..."

for service in "${SERVICES[@]}"; do
    systemctl is-active --quiet $service
    if [ $? -eq 0 ]; then
        echo "[OK] $service is running"
    else
        echo "[ALERT] $service is NOT running!"
        logger -p local0.err "$service is down on $(hostname) at $(date)"
    fi
done
