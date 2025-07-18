location = "East US"
environment = "dev"

tags = {
  Environment = "dev"
  Project     = "sp-terraform-project3"
  ManagedBy   = "Terraform"
}

# Resource Group Configuration
rsg_name = "sp-terraform-project3-rg"
rsg_location = "East US"

# Virtual Network Configuration
vnet_name = "sp-terraform-project3-vnet"
vnet_address_space = "10.0.0.0/16"

# Subnet Configuration
subnet_name = "internal"
subnet_address_prefix = "10.0.1.0/24"

# Network Security Group Configuration
nsg_name = "sp-terraform-project3-nsg"

# Virtual Machine Configuration
vm_name = "sp-terraform-vm"
vm_size = "Standard_B1s"
vm_admin_username = "azureuser"
vm_admin_password = "P@ssw0rd123!"

# Key Vault Configuration
key_vault_name = "sp-terraform-kv"
key_vault_sku_name = "standard"
