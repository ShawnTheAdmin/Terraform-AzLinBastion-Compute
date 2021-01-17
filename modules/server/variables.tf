// Define variables

/* Bool value that specifies whether or not to use a Bastion host. 
If this is True, Bastion host gets created along with 1 public IP.
If this is False, Bastion host does not get created. Servers are each created with a public IP and NSGs allowing 3389.*/

variable "bastion" {
  type        = bool
  description = "Defines whether or not a Bastion host is used."
}

variable "bastion_name" {
  type        = string
  description = "Name for the Bastion host."
}

variable "server_rg_name" {
  type        = string
  description = "Name for resource group."
}

variable "server_rg_location" {
  type        = string
  description = "Location for resource group and associated resources."
}

variable "server_vnet_name" {
  type        = string
  description = "Name for virtual network."
}

variable "server_vnet_address_space" {
  type        = string
  description = "Address space for the servers virtual network."
}

variable "server_vnet_subnets" {
  type = map
}

variable "server_name_prefix" {
  type        = string
  description = "Name for virtual network."
}

variable "server_count" {
  type        = number
  description = "Number of servers to create."
}

variable "server_username" {
  type        = string
  description = "Username for the created server(s)."
}

variable "tags" {
  type        = map
  description = "Tags for created resources"
}

