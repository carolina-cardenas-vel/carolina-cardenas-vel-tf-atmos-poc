resource "azurerm_public_ip" "lb_public_ip_tf_poc" {
  name                = var.lb_public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.static_allocation_method
  tags = {
    environment = var.environment
  }
}

resource "azurerm_lb" "lb_tf_poc" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = var.ip_config_name
    public_ip_address_id = azurerm_public_ip.lb_public_ip_tf_poc.id
  }

  tags = {
    environment = var.environment
  }
}

resource "azurerm_lb_backend_address_pool" "address_pool_tf_poc" {
  loadbalancer_id = azurerm_lb.lb_tf_poc.id
  name            = var.backend_pool_name
}

resource "azurerm_lb_probe" "http_probe_tf_poc" {
  name            = var.http_probe_name
  loadbalancer_id = azurerm_lb.lb_tf_poc.id
  protocol        = var.http_protocol
  port            = var.port_app
  request_path    = var.path_app
}

resource "azurerm_lb_rule" "http_rule_tf_poc" {
  name                           = var.http_rule_name
  loadbalancer_id                = azurerm_lb.lb_tf_poc.id
  protocol                       = var.tcp_protocol
  frontend_port                  = var.port_app
  backend_port                   = var.port_app
  frontend_ip_configuration_name = var.ip_config_name
  probe_id                       = azurerm_lb_probe.http_probe_tf_poc.id
  backend_address_pool_ids = [
    azurerm_lb_backend_address_pool.address_pool_tf_poc.id
  ]
}
