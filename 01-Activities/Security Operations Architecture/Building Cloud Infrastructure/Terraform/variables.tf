variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "Offensive-Security"
}

variable "location" {
  description = "Location of the resource group"
  type        = string
  default     = "eastus"
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "ssh_source_address_prefix" {
  description = "Source address prefix for the SSH security rule"
  type        = string
  default     = "*"
}

variable "http_source_address_prefix" {
  description = "Source address prefix for the HTTP security rule"
  type        = string
  default     = "*"
}
