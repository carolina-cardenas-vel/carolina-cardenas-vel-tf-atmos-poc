output "vnet-id" {
  value = module.vnet.vnet_id
}

output "subnet-id" {
  value = module.vnet.subnet_id
}

output "public_ip" {
  value = module.lb.public_ip
}