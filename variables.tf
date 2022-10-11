
variable "aset_create" {
  type        = bool
  description = "Boolean to determine whether or not we want to create a availabilty set."
  default     = true
}

variable "resource_group_name" {
  type        = string
  description = "The name os the resource group"
  default     = "tfaz-conditonal-rg"
}

# variable "location" {
#   type = string
#   description = "The location where the resources are to be provisioned"
#   default = "East US2"
# }

variable "asset_name" {
  type        = string
  description = "The name of the availability set"
  default     = "tfaz-availset"
}

# variable "avail_set" {
#   type        = map(any)
#   description = "The address prefixes to use for the each subnet."
#   default = {
#     dev_vn  = "West Europe"
#     prod_vm = "East US2"

#   }
# }

variable "virtual_machine_name" {
  default = "tfaz-availvm"
}

variable "virtual_network_name" {
  default = "tfaz-vnet"
}

# variable "virtual_network" {
#   type        = map(any)
#   description = "The location of each vnet."
#   default = {
#     private_vnet = "West Europe"

#     public_vnet = "East US2"

#   }
# }


# variable "subnets" {
#   type        = map(any)
#   description = "The address prefixes to use for the each subnet."
#   default = {
#     private_subnet = ["10.0.1.0/24"]

#     public_subnet = ["10.0.2.0/24"]

#   }
# }

variable "subnet_name" {
  default = "tfaz-subnet"
}

# variable "nic" {
#   type        = map(any)
#   description = "The names of the nic and ipconfig."
#   default = {
#     dev_nic  = "dev_ipconfig"
#     prod_nic = "prod_ipconfig"

#   }
# }

variable "network_interface_name" {
  default = "tfaz-nic"
}

variable "ip_config_name" {
  default = "tfaz-ipconfig"
}

variable "vnet_cidr_space" {
  type        = list(string)
  description = "The vnets address space"
  default     = ["10.0.0.0/16", "172.16.0.0/16"]
}

variable "compute_count" {
  default = 2
}