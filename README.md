## Azure Terraform Conditional Expressions
This is to show how terraform contitional expressions work. When **avset_create** is set to **true** (in terraform.tfvars file), the example comfiguration creates an availability set and attaches the virtual machine(s) to it but when set to **false**, it does not create availability set.
The number of instances of other resources to be created can also be changed by using the **compute_count** variable.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.27.0 |

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
| <a name="input_avset_create"></a> [avset\_create](#input\_avset\_create) | Boolean to determine whether or not we want to create an availabilty set. | `bool` | `true` | no |
| <a name="input_avset_name"></a> [avset\_name](#input\_avset\_name) | The name of the availability set | `string` | `"tfaz-availset"` | no |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count) | The number of instances to be created | `number` | `2` | no |
| <a name="input_ip_config_name"></a> [ip\_config\_name](#input\_ip\_config\_name) | The name of the ip configuration of the network interface | `string` | `"tfaz-ipconfig"` | no |
| <a name="input_network_interface_name"></a> [network\_interface\_name](#input\_network\_interface\_name) | The name of the network interface | `string` | `"tfaz-nic"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name os the resource group | `string` | `"tfaz-conditonal-rg"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The address prefixes to use for the each subnet. | `map(any)` | <pre>{<br>  "private_subnet": [<br>    "10.0.1.0/24"<br>  ],<br>  "public_subnet": [<br>    "172.16.1.0/24"<br>  ]<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags attached to the resources | `map` | <pre>{<br>  "environment": "Development"<br>}</pre> | no |
| <a name="input_virtual_machine_name"></a> [virtual\_machine\_name](#input\_virtual\_machine\_name) | The name of the virtual machine | `string` | `"tfaz-availvm"` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network | `string` | `"tfaz-vnet"` | no |
| <a name="input_vnet_cidr_space"></a> [vnet\_cidr\_space](#input\_vnet\_cidr\_space) | The vnets address space | `list(string)` | <pre>[<br>  "10.0.0.0/16",<br>  "172.16.0.0/16"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_set_id"></a> [availability\_set\_id](#output\_availability\_set\_id) | The Id of the availability set |
| <a name="output_availability_set_name"></a> [availability\_set\_name](#output\_availability\_set\_name) | The name of the availability set |
| <a name="output_cidr_prefixes"></a> [cidr\_prefixes](#output\_cidr\_prefixes) | The address prefixes to use for the subnet. |
| <a name="output_cidr_space"></a> [cidr\_space](#output\_cidr\_space) | The address space to use for the subnet. |
| <a name="output_location"></a> [location](#output\_location) | The name of the location |
| <a name="output_network_interface_ids"></a> [network\_interface\_ids](#output\_network\_interface\_ids) | The id of the network interface. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name which should be used for this Resource Group |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | The ids of the subnet |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags which should be assigned to the Resource Group. |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | The name of the virtual network |
<!-- END_TF_DOCS -->