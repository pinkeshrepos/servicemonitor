# 🛡️ Linux Service Monitoring System

This enterprise-grade project monitors critical services (`nginx`, `mysql`, `ssh`) and logs their status. It prints alerts to terminal if a service is found inactive. Extendable to integrate with email/Slack/webhook alerts.

## 🧠 Why?

In production environments, downtime can be fatal. This script ensures core services are up, and alerts immediately if not.

## ⚙️ Services Monitored

- nginx
- mysql
- ssh

## 🚀 How to Run

```bash
chmod +x monitor_services.sh
sudo ./monitor_services.sh
