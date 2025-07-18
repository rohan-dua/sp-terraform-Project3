resource "azurerm_virtual_network" "name" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = var.rsg_location
  resource_group_name = var.rsg_name

  tags = {
    environment = "Terraform"
  }
}