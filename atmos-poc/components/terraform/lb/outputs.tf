output "public_ip" {
  value = azurerm_public_ip.lb_public_ip_tf_poc.ip_address
}

output "loadbalancer_id" {
  value = azurerm_lb.lb_tf_poc.id
}

output "backend_address_pool_id" {
  value = azurerm_lb_backend_address_pool.address_pool_tf_poc.id
}