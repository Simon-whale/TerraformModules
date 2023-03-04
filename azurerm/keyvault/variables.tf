variable "resource_location" {
  description = "location of the resource"
  type        = string
}

variable "resource_group_name" {
  description = "name of the resource group"
  type        = string
}

variable "key_vault_name" {
  description = "name for the keyvault"
  type        = string
}

variable "enabled_for_disk_encryption" {
  description = "enable encryption for the keyvault"
  type        = bool
}

variable "soft_delete_retention_days" {
  description = "set the number of days for retaining items that you have soft deleted"
  type        = number
}

variable "purge_protection_enabled" {
  description = "set purge protection"
  type        = bool
}

variable "sku_name" {
  description = "set the sku type"
  type        = string

  validation {
    condition     = contains(["standard", "premium"], var.sku_name)
    error_message = "valid items for sku_name are (standard, premium)"
  }
}

variable "key_permissions" {
  description = "key permission available to the keyvault"
  type        = list(string)
}

variable "secret_permissions" {
  description = "secret permissions on the keyvault"
  type        = list(string)
}

variable "storage_permissions" {
  description = "storage permissions on the keyvault"
}

variable "tags" {
  description = "Tags to be applied to the object being created"
  type        = map(string)
}