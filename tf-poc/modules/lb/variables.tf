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

variable "vnet_id" {
  description = "The id of the virtual network"
  type        = string
}

variable "lb_public_ip_name" {
  description = "The public IP for the Load Balancer"
  type        = string
}

variable "lb_allocation_method" {
  description = "The load balancer allocation method"
  type        = string
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "ip_config_name" {
  description = "Load Balancer frontend ip name"
  type        = string
  default     = "LoadBalancerFrontEnd"
}

variable "port_app" {
  description = "Port in which the app is running"
  type        = number
}

variable "backend_pool_name" {
  description = "The name of the backend address pool name"
  type        = string
}

variable "http_protocol" {
  description = "HTTP"
  type        = string
}

variable "tcp_protocol" {
  description = "TCP"
  type        = string
}

variable "path_app" {
  description = "App endpoint"
  type        = string
}

variable "http_probe_name" {
  description = "The name of the http probe"
  type        = string
}

variable "http_rule_name" {
  description = "The name of the http rule"
  type        = string
}