# Project List

## Cisco IOS

This project contains example Automations for Cisco IOS.

Load these examples into the Itential Platform to:

- Perform a Software Upgrade
- Turn Up a Port
- Command Template Runner
- Push Configuration

### Dependencies
To perform all automations in this Project you'll need:
- [Automation Gateway v4](https://www.itential.com/automation-gateway/)
- Automation Gateway Adapter (ships with Itential Platform)

### IAG Device Configuration
Sample IAG Inventory for this Project using Ansible:
```
{
  "ansible_host": "XXX.XX.XXX.XX",
  "ansible_port": 22,
  "ansible_network_os": "ios",
  "ansible_connection": "network_cli",
  "ansible_user": "USERNAME",
  "ansible_password": "admin",
  "ansible_become": "yes",
  "ansible_become_method": "enable",
  "ansible_become_password": "PASSWORD"
}
```

Sample IAG Inventory for this Project using Netmiko (via Ansible):
```
{
  "ansible_connection": "local",
  "get_state_command": "show version",
  "ansible_port": 22,
  "ansible_password": "PASSWORD",
  "ansible_host": "XXX.XX.XXX.XX",
  "netmiko_device_type": "cisco_ios",
  "get_config_command": "show run",
  "ansible_user": "USERNAME"
}
```
