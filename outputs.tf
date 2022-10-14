output "resource_group_name" {
  description = "The name which should be used for this Resource Group"
  value       = azurerm_resource_group.example.name
}

output "location" {
  description = "The name of the location"
  value       = azurerm_resource_group.example.location
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.example.name
}

output "cidr_space" {
  description = "The address space to use for the subnet."
  value       = azurerm_virtual_network.example.address_space
}

output "cidr_prefixes" {
  description = "The address prefixes to use for the subnet."
  value       = tomap({ for k, s in azurerm_subnet.example : k => s.address_prefixes })
}

output "subnet_ids" {
  description = "The ids of the subnet"
  value       = tomap({ for k, s in azurerm_subnet.example : k => s.id })
}

output "availability_set_name" {
  description = "The name of the availability set"
  value       = azurerm_availability_set.example[0].name
}

output "availability_set_id" {
  description = "The Id of the availability set"
  value       = azurerm_availability_set.example[0].id
}

output "network_interface_ids" {
  description = "The id of the network interface."
  value       = azurerm_network_interface.example.*.id
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  value       = var.tags
}


