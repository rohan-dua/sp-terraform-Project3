# Resource Configuration Variables
variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
  
  validation {
    condition = contains([
      "East US", "East US 2", "West US", "West US 2", "West US 3",
      "Central US", "North Central US", "South Central US"
    ], var.location)
    error_message = "Location must be a valid Azure region."
  }
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

# Common Tags
variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "Development"
    Project     = "sp-terraform-project3"
    ManagedBy   = "Terraform"
  }
}
variable "rsg_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "myResourceGroup"
}

variable "rsg_location" {
  description = "The location of the Azure Resource Group"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Azure Virtual Network"
  type        = string
  default     = "myVNet"
}

variable "vnet_address_space" {
  description = "The address space for the Azure Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vm_name" {
  description = "The name of the Azure Virtual Machine"
  type        = string
  default     = "myVM"
}

# VM Configuration Variables
variable "vm_size" {
  description = "The size of the Azure Virtual Machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "vm_admin_username" {
  description = "The admin username for the Azure Virtual Machine"
  type        = string
  default     = "adminuser"
}

variable "vm_admin_password" {
  description = "The admin password for the Azure Virtual Machine"
  type        = string
  sensitive   = true
  default     = "P@ssw0rd123!"
}

# Subnet Configuration Variables
variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "internal"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# NSG Configuration Variables
variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "myNSG"
}

# Key Vault Configuration Variables
variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
  default     = "mykeyvault"
}

variable "key_vault_sku_name" {
  description = "The SKU name for the Key Vault"
  type        = string
  default     = "standard"
}