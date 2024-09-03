# Project List

## Cisco ASA

This project contains example Automations for Cisco ASA.

Load these examples into the Itential Platform to:

- Perform a Software Upgrade
- Add ACL Rule
- Delete ACL Rule
- Command Template Runner

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
  "ansible_network_os": "asa",
  "ansible_connection": "network_cli",
  "ansible_user": "USERNAME",
  "ansible_password": "PASSWORD",
  "ansible_become": "yes",
  "ansible_become_method": "enable",
  "ansible_become_pass": "PASSWORD"
}
```
