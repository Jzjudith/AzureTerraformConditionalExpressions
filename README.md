## Azure Terraform Conditional Expressions
This is to show how terraform contitional expressions work. When **avset_create** is set to **true** (in terraform.tfvars file), the example comfiguration creates an availability set and attaches the virtual machine(s) to it but when set to **false**, it does not create availability set.
The number of instances of other resources to be create can be changed by using **compute_create** variable.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_availability_set.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/availability_set) | resource |
| [azurerm_linux_virtual_machine.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aset_create"></a> [aset\_create](#input\_aset\_create) | Boolean to determine whether or not we want to create a availabilty set. | `bool` | `true` | no |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | The name of the availability set | `string` | `"tfaz-availset"` | no |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count) | n/a | `number` | `2` | no |
| <a name="input_ip_config_name"></a> [ip\_config\_name](#input\_ip\_config\_name) | n/a | `string` | `"tfaz-ipconfig"` | no |
| <a name="input_network_interface_name"></a> [network\_interface\_name](#input\_network\_interface\_name) | n/a | `string` | `"tfaz-nic"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name os the resource group | `string` | `"tfaz-conditonal-rg"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | `"tfaz-subnet"` | no |
| <a name="input_virtual_machine_name"></a> [virtual\_machine\_name](#input\_virtual\_machine\_name) | n/a | `string` | `"tfaz-availvm"` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | n/a | `string` | `"tfaz-vnet"` | no |
| <a name="input_vnet_cidr_space"></a> [vnet\_cidr\_space](#input\_vnet\_cidr\_space) | The vnets address space | `list(string)` | <pre>[<br>  "10.0.0.0/16",<br>  "172.16.0.0/16"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->