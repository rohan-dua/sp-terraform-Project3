resource "azurerm_subnet" "internal" {
  name                 = var.subnet_name
  resource_group_name  = var.rsg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.subnet_address_prefix]
}
