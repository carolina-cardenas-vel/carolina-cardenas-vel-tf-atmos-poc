output "vnet_id" {
  value = azurerm_virtual_network.vnet_tf_poc.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet_tf_poc.id
}