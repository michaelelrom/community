# Project List

## F5 BIG-IP

This project contains modular use cases for F5 BIG-IP.

Using this Itential Platform Project, you should be able to interact with BIG-IP to:

- Create Pool and Members
- Create a Virtual Server

### Dependencies
To perform all automations in this Project you'll need:
- [Automation Gateway v4](https://www.itential.com/automation-gateway/)
- Automation Gateway Adapter (ships with Itential Platform)

### IAG Device Configuration
Sample IAG Inventory for this Project using Ansible:
```
{
  "ansible_host": "XXX.XX.XXX.XX",
  "ansible_network_os": "bigip",
  "ansible_connection": "local",
  "ansible_provider": "{\"password\":\"PASSWORD\",\"server\":\"XXX.XX.XXX.XX\",\"server_port\":\"8443\",\"transport\":\"rest\",\"user\":\"USERNAME\",\"validate_certs\":false}",
  "ansible_port": 8443
}
```