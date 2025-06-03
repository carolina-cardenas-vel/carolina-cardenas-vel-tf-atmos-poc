resource "azurerm_network_interface" "nic_tf_poc" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.nic_ip_config_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.vm_ip_allocation_method
  }
}

resource "azurerm_network_interface_backend_address_pool_association" "backend_pool_association_tf_poc" {
  network_interface_id    = azurerm_network_interface.nic_tf_poc.id
  ip_configuration_name   = var.nic_ip_config_name
  backend_address_pool_id = var.backend_address_pool_id
}

resource "azurerm_linux_virtual_machine" "vm_tf_poc" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.vm_username
  network_interface_ids = [
    azurerm_network_interface.nic_tf_poc.id,
  ]

  admin_ssh_key {
    username   = var.vm_username
    public_key = file(var.ssh_pubkey)
  }

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  custom_data = filebase64("${path.module}/init-cloud.yaml")

  tags = {
    environment = var.environment
  }
}