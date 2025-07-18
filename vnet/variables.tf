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