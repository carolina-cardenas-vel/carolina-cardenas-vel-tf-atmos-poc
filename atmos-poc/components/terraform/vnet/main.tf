resource "azurerm_network_security_group" "sg_tf_poc" {
  name                = var.sg_name
  location            = var.location
  resource_group_name = var.resource_group_name
  security_rule {
    name                       = "Allow80"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = var.environment
  }

}

resource "azurerm_virtual_network" "vnet_tf_poc" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "subnet_tf_poc" {
  name                 = var.subnet_name
  address_prefixes     = var.address_prefixes
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet_tf_poc.name
}

resource "azurerm_subnet_network_security_group_association" "sg-association_tf_poc" {
  subnet_id                 = azurerm_subnet.subnet_tf_poc.id
  network_security_group_id = azurerm_network_security_group.sg_tf_poc.id
}

resource "azurerm_public_ip" "natgw_public_ip_tf_poc" {
  name                = var.natgw_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.static_allocation_method
  sku                 = var.standard_sku
}

resource "azurerm_nat_gateway" "natgw_tf_poc" {
  name                = var.natgw_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.standard_sku
}

resource "azurerm_nat_gateway_public_ip_association" "nat_ip_association_tf-poc" {
  nat_gateway_id       = azurerm_nat_gateway.natgw_tf_poc.id
  public_ip_address_id = azurerm_public_ip.natgw_public_ip_tf_poc.id
}

resource "azurerm_subnet_nat_gateway_association" "nat_subnet_association_tf-poc" {
  subnet_id      = azurerm_subnet.subnet_tf_poc.id
  nat_gateway_id = azurerm_nat_gateway.natgw_tf_poc.id
}