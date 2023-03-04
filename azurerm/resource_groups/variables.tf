variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "resource_region" {
  description = "Name of the region"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the object being created"
  type        = map(string)
}