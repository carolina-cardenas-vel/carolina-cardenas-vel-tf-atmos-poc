
module "vnet" {
  source                  = "./modules/vnet"
  location                = var.location
  vnet_name               = var.vnet_name
  subnet_name             = var.subnet_name
  resource_group_name     = var.resource_group_name
  sg_name                 = var.sg_name
  address_prefixes        = var.subnet_address_prefix
  address_space           = var.address_space
  environment             = var.environment
  natgw_allocation_method = var.natgw_allocation_method
  natgw_name              = var.natgw_name
  standard_sku_nat        = var.standard_sku_nat
}

module "lb" {
  source               = "./modules/lb"
  location             = var.location
  resource_group_name  = var.resource_group_name
  environment          = var.environment
  vnet_id              = module.vnet.vnet_id
  lb_public_ip_name    = var.lb_public_ip_name
  lb_allocation_method = var.lb_allocation_method
  lb_name              = var.lb_name
  ip_config_name       = var.ip_config_name
  port_app             = var.port_app
  http_probe_name      = var.http_probe_name
  http_rule_name       = var.http_rule_name
  http_protocol        = var.http_protocol
  backend_pool_name    = var.backend_pool_name
  path_app             = var.path_app
  tcp_protocol         = var.tcp_protocol
}

module "vm" {
  source                       = "./modules/vm"
  subnet_id                    = module.vnet.subnet_id
  location                     = var.location
  resource_group_name          = var.resource_group_name
  environment                  = var.environment
  nic_name                     = var.nic_name
  nic_ip_config_name           = var.nic_ip_config_name
  ssh_pubkey                   = var.ssh_pubkey
  backend_address_pool_id      = module.lb.backend_address_pool_id
  vm_name                      = var.vm_name
  vm_username                  = var.vm_username
  vm_ip_allocation_method      = var.vm_ip_allocation_method
  vm_size                      = var.vm_size
  image_version                = var.image_version
  image_sku                    = var.image_sku
  image_publisher              = var.image_publisher
  image_offer                  = var.image_offer
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type
}
