# Resource Group Outputs
output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.rsg.resource_group_name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = module.rsg.resource_group_location
}

# Virtual Network Outputs
output "vnet_id" {
  description = "The ID of the virtual network"
  value       = module.vnet.vnet_id
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = module.vnet.vnet_name
}

# Subnet Outputs
output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.subnet.subnet_id
}

# Network Security Group Outputs
output "nsg_id" {
  description = "The ID of the network security group"
  value       = module.nsg.nsg_id
}

# Key Vault Outputs
output "key_vault_id" {
  description = "The ID of the key vault"
  value       = module.key_vault.key_vault_id
}

output "key_vault_uri" {
  description = "The URI of the key vault"
  value       = module.key_vault.key_vault_uri
}

# Virtual Machine Outputs
output "vm_id" {
  description = "The ID of the virtual machine"
  value       = module.vm.vm_id
}

output "vm_public_ip" {
  description = "The public IP address of the virtual machine"
  value       = module.vm.public_ip_address
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine"
  value       = module.vm.private_ip_address
}
