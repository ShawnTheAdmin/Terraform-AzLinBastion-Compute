// Define variables

/* Bool value that specifies whether or not to use a Bastion host. 
If this is True, Bastion host gets created along with 1 public IP.
If this is False, Bastion host does not get created. Servers are each created with a public IP and NSGs allowing 3389.*/

variable "bastion" {
  type        = bool
  default     = true
  description = "Defines whether or not a Bastion host is used."
  validation {
    condition     = can(regex("(true|false)", var.bastion))
    error_message = "The variable bastion must be true or false."
  }
}

variable "bastion_name" {
  type        = string
  description = "Name for the Bastion host."
}

variable "server_rg_name" {
  type        = string
  description = "Name for resource group."
}

variable "server_vnet_name" {
  type        = string
  description = "Name for virtual network."
}

variable "server_name_prefix" {
  type        = string
  description = "Name for virtual network."
}

variable "server_count" {
  type = number
}

variable "server_username" {
  type = string
}
variable "tags" {
  type = map
}
