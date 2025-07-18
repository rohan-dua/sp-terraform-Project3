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