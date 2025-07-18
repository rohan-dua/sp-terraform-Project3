variable "vm_name" {
  description = "The name of the Azure Virtual Machine"
  type        = string
  default     = "myVM"
}

variable "vm_location" {
  description = "The location of the Azure Virtual Machine"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "myResourceGroup"
}

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
  default     = "P@ssw0rd!"
}

variable "subnet_id" {
  description = "The ID of the subnet where the VM will be deployed"
  type        = string
}

variable "network_security_group_id" {
  description = "The ID of the Network Security Group to associate with the VM"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}