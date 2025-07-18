output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.name.id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.name.name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network"
  value       = azurerm_virtual_network.name.address_space
}