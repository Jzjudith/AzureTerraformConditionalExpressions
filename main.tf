
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = "East US2"
}
resource "azurerm_availability_set" "example" {
  count               = var.avset_create ? 1 : 0
  name                = var.avset_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

# virtual network
resource "azurerm_virtual_network" "example" {
  count = var.compute_count

  name                = "${var.virtual_network_name}-${count.index}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.vnet_cidr_space
  depends_on = [
    azurerm_resource_group.example
  ]
}

# subnets
resource "azurerm_subnet" "example" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = each.value
  depends_on = [
    azurerm_virtual_network.example
  ]
}

# network interfaces
resource "azurerm_network_interface" "example" {
  count = var.compute_count

  name                = "${var.network_interface_name}-${count.index}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "${var.ip_config_name}-${count.index}"
    subnet_id                     = element([for subnet in azurerm_subnet.example : subnet.id], count.index)
    private_ip_address_allocation = "Dynamic"
  }
  depends_on = [
    azurerm_subnet.example
  ]
}



resource "azurerm_linux_virtual_machine" "example" {
  count = var.compute_count

  name                            = "${var.virtual_machine_name}-${count.index}"
  resource_group_name             = azurerm_resource_group.example.name
  location                        = azurerm_resource_group.example.location
  size                            = "Standard_B1s"
  admin_username                  = "devlab"
  admin_password                  = "Password123"
  disable_password_authentication = false
  availability_set_id             = var.avset_create ? azurerm_availability_set.example[0].id : null
  network_interface_ids           = [element([for nic in azurerm_network_interface.example : nic.id], count.index), ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
  depends_on = [
    azurerm_network_interface.example
  ]
}