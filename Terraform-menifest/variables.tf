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