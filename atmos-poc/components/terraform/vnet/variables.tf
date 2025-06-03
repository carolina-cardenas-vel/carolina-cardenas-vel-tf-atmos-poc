variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "address_space" {
  description = "The address space of the vnet"
  type        = list(string)
}

variable "address_prefixes" {
  description = "The address prefix of the subnet"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "natgw_name" {
  description = "The name of the NAT gateway"
  type        = string
}

variable "static_allocation_method" {
  description = "Allocation method of the NAT gateway"
  type        = string
}

variable "standard_sku" {
  description = "Standard sku"
  type        = string
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}