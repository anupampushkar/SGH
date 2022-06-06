variable "mgmt_resource_group_name" {
  type        = string
  description = "management components"
  default     = "rg-adxdev_hub-mgmtservices-uaen-001"
}
variable "location" {
  type        = string
  description = "The location where the resource group should be created."
  default     = "UAE North"
}

variable "resource-group-name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "RG_EastUS"
}

variable "virtual-machine-name" {
  description = "Azure Virtual Machine Name"
  type        = string
  default     = "TestingVMforASR"
}

variable "lock-name" {
  description = "Azure Virtual Machine Name"
  type        = string
  default     = "Prevent-VM-Delete-Lock"
}

variable "lock-level" {
  description = "Azure Lock Level"
  type        = string
  default     = "CanNotDelete"
}

variable "lock-notes" {
  description = "Azure Virtual Machine Name"
  type        = string
  default     = "Lock created by Terraform"
}