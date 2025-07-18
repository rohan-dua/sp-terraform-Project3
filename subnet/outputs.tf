output "subnet_id" {
  description = "The ID of the subnet"
  value       = azurerm_subnet.internal.id
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.internal.name
}

output "subnet_address_prefix" {
  description = "The address prefix of the subnet"
  value       = azurerm_subnet.internal.address_prefixes[0]
}
