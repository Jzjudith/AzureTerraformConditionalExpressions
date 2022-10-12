variable "resource_group_name" {
  type        = string
  description = "The name os the resource group"
  default     = "tfaz-conditonal-rg"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  default     = "tfaz-vnet"
}

variable "vnet_cidr_space" {
  type        = list(string)
  description = "The vnets address space"
  default     = ["10.0.0.0/16", "172.16.0.0/16"]
}

variable "subnets" {
  type        = map(any)
  description = "The address prefixes to use for the each subnet."
  default = {
    private_subnet = ["10.0.1.0/24"]

    public_subnet = ["172.16.1.0/24"]

  }
}

variable "avset_name" {
  type        = string
  description = "The name of the availability set"
  default     = "tfaz-availset"
}

variable "avset_create" {
  type        = bool
  description = "Boolean to determine whether or not we want to create an availabilty set."
  default     = true
}

variable "virtual_machine_name" {
  type        = string
  description = "The name of the virtual machine"
  default     = "tfaz-availvm"
}

variable "network_interface_name" {
  type        = string
  description = "The name of the network interface"
  default     = "tfaz-nic"
}

variable "ip_config_name" {
  type        = string
  description = "The name of the ip configuration of the network interface"
  default     = "tfaz-ipconfig"
}

variable "compute_count" {
  description = "The number of instances to be created"
  default     = 2
}