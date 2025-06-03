variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "westus"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-tf-poc"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "vnet-tf-poc"
}

variable "address_space" {
  description = "The address space of the vnet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet-tf-poc"
}

variable "subnet_address_prefix" {
  description = "The address prefix of the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
  default     = "sgname-tf-poc"
}

variable "environment" {
  description = "The name of the security group"
  type        = string
  default     = "dev"
}

variable "nic_name" {
  description = "The name of the network interface card"
  type        = string
  default     = "nic-tf-poc"
}

variable "nic_ip_config_name" {
  description = "IP configuration name associated with the backend pool"
  type        = string
  default     = "internal"
}

variable "ssh_pubkey" {
  description = "The name of public key that will be installed on the VM"
  type        = string
  default     = "~/.ssh/ssh-vm-tf-poc.pub"  
}

variable "natgw_name" {
  description = "The name of the NAT gateway"
  type        = string
  default     = "natgw-public-ip-tf-poc"
}

variable "natgw_allocation_method" {
  description = "Allocation method of the NAT gateway"
  type        = string
  default     = "Static"
}

variable "standard_sku_nat" {
  description = "Standard sku for the nat gateway is title cased"
  type        = string
  default     = "Standard"
}

variable "lb_public_ip_name" {
  description = "The public IP name for the Load Balancer"
  type        = string
  default     = "lb-public-ip-tf-poc"
}

variable "lb_allocation_method" {
  description = "The load balancer allocation method"
  type        = string
  default     = "Static"
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
  default     = "lb-tf-poc"
}

variable "ip_config_name" {
  description = "The name of the load balancer"
  type        = string
  default     = "LoadBalancerFrontEnd"
}

variable "port_app" {
  description = "Port in which the app is running"
  type        = number
  default     = 80
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "vm-tf-poc"
}

variable "vm_username" {
  description = "Name of the VM"
  type        = string
  default     = "adminuser"
}

variable "vm_ip_allocation_method" {
  description = "The vm private ip allocation method"
  type        = string
  default     = "Dynamic"
}

variable "vm_size" {
  description = "The size of the vm"
  type        = string
  default     = "Standard_F2"
}

variable "backend_pool_name" {
  description = "The name of the backend address pool name"
  type        = string
  default     = "backend-address-pool-tf-poc"
}

variable "http_protocol" {
  description = "HTTP"
  type        = string
  default     = "Http"
}

variable "tcp_protocol" {
  description = "TCP"
  type        = string
  default     = "Tcp"
}

variable "path_app" {
  description = "App path endpoint"
  type        = string
  default     = "/quote"
}

variable "http_probe_name" {
  description = "The name of the http probe"
  type        = string
  default     = "http-probe-tf-poc"
}

variable "http_rule_name" {
  description = "The name of the http rule"
  type        = string
  default     = "http-rule-tf-poc"
}

variable "image_publisher" {
  description = "The publisher of the image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The offer of the image"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "The SKU of the image"
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  description = "The version of the image"
  type        = string
  default     = "latest"
}

variable "os_disk_caching" {
  description = "The caching type for the os disk"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "The storage account type for the os disk"
  type        = string
  default     = "Standard_LRS"
}
