module "rsg" {
  source = "./rsg"
  resource_group_name = var.rsg_name
  resource_group_location = var.rsg_location
}

module "vnet" {
  source = "./vnet"
  vnet_name =  var.vnet_name
  vnet_address_space = var.vnet_address_space
  rsg_name = module.rsg.resource_group_name
  rsg_location = module.rsg.resource_group_location
}

module "subnet" {
  source = "./subnet"
  subnet_name = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  rsg_name = module.rsg.resource_group_name
  rsg_location = module.rsg.resource_group_location
  vnet_name = module.vnet.vnet_name
  vnet_address_space = var.vnet_address_space
}

module "nsg" {
  source = "./nsg"
  nsg_name = var.nsg_name
  location = module.rsg.resource_group_location
  resource_group_name = module.rsg.resource_group_name
  tags = var.tags
}

module "key_vault" {
  source = "./secret-manager"
  key_vault_name = "${var.key_vault_name}${random_id.kv_suffix.hex}"
  location = module.rsg.resource_group_location
  resource_group_name = module.rsg.resource_group_name
  sku_name = var.key_vault_sku_name
  tags = var.tags
}

module "vm" {
  source = "./vm"
  vm_name = var.vm_name
  vm_location = var.rsg_location
  resource_group_name = module.rsg.resource_group_name
  vm_size = var.vm_size
  vm_admin_username = var.vm_admin_username
  vm_admin_password = var.vm_admin_password
  subnet_id = module.subnet.subnet_id
  network_security_group_id = module.nsg.nsg_id
  tags = var.tags
}

# Random ID for Key Vault name uniqueness
resource "random_id" "kv_suffix" {
  byte_length = 4
}