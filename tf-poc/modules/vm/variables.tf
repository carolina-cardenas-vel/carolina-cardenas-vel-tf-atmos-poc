variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "subnet_id" {
  description = "The id of the subnet"
  type        = string
}

variable "nic_ip_config_name" {
  description = "IP configuration name associated with the backend pool"
  type        = string
}

variable "nic_name" {
  description = "The name of the network interface card"
  type        = string
}

variable "ssh_pubkey" {
  description = "The public key that will be installed on the VM"
  type        = string
}

variable "backend_address_pool_id" {
  description = "The id of the backend address pool"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "vm_username" {
  description = "Name of the VM"
  type        = string
}

variable "vm_ip_allocation_method" {
  description = "The vm private ip allocation method"
  type        = string
}

variable "vm_size" {
  description = "The size of the vm"
  type        = string
}

variable "image_publisher" {
  description = "The publisher of the image"
  type        = string
}

variable "image_offer" {
  description = "The offer of the image"
  type        = string
}

variable "image_sku" {
  description = "The SKU of the image"
  type        = string
}

variable "image_version" {
  description = "The version of the image"
  type        = string
}

variable "os_disk_caching" {
  description = "The caching type for the os disk"
  type        = string
}

variable "os_disk_storage_account_type" {
  description = "The storage account type for the os disk"
  type        = string
}

