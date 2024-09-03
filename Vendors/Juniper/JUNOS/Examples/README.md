# Project List

## Juniper JUNOS

This project contains example Automations for Juniper JUNOS.

Load these examples into the Itential Platform to:

- Perform a Software Upgrade
- Turn Up a Port

### Dependencies
To perform all automations in this Project you'll need:
- [Automation Gateway v4](https://www.itential.com/automation-gateway/)
- Automation Gateway Adapter (ships with Itential Platform)

### IAG Device Configuration
Sample IAG Inventory for this Project using Ansible:
```
{
  "ansible_connection": "netconf",
  "ansible_host": "XXX.XX.XXX.XX",
  "ansible_network_os": "junos",
  "ansible_port": 22,
  "ansible_password": "PASSWORD",
  "ansible_user": "USERNAME"
}
```