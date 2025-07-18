variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "myNSG"
}

variable "location" {
  description = "The location where the NSG will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
