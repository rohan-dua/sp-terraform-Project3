output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.main.id
}

output "vm_name" {
  description = "The name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.main.name
}

output "public_ip_address" {
  description = "The public IP address of the Virtual Machine"
  value       = azurerm_public_ip.main.ip_address
}

output "network_interface_id" {
  description = "The ID of the network interface"
  value       = azurerm_network_interface.main.id
}

output "private_ip_address" {
  description = "The private IP address of the Virtual Machine"
  value       = azurerm_network_interface.main.private_ip_address
}