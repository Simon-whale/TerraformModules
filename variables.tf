variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string

  validation {
    condition = can(regex("^rg-", var.resource_group_name))
    error_message = "resource group name should start with rg-"
  }
}

variable "resource_region" {
  description = "Name of the region"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the object being created"
  type        = map(string)
}
