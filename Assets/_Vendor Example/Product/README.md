# Alkira Assets
Assets for the Itential Platform.

## OpenAPIs
- [sn_chg_v1](./OpenAPIs/test.swagger.json)

## IAG Inventory
Sample IAG 4.x Inventory using Ansible:
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

## Projects
### ServiceNow Project
- Create Change
- Close Change
- _Sample Use Cases_
    - Create RITM and Change

#### Dependencies
- [Operations Manager Automations](./Automations/)
- [Automation Gateway 4.x](https://www.itential.com/automation-gateway/)
- Automation Gateway Adapter \(_ships with Itential Platform_\)

### Incident Management
- Get Incident Status
- Close Incident
<br />
<br />
- Sample Use Cases
    - Incident Lifecycle

#### Dependencies
- [ServiceNow Table Integration](./OpenAPI/table_api)

## Golden Configurations
- Cisco IOS - Simple
- Cisco IOS - Jinja2

## LCM Resource Models

...


