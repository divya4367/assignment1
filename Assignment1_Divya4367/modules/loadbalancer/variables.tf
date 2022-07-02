locals {
  common_tags = {
    Project = "Automation Project – Assignment 1" 
	Name = "Divya koteeswaran"
	ExpirationDate = "2022-06-30" 
	Environment = "Lab" 
  }
}

variable "resource_group"{
    default = ""
}

variable "location" {
    default = ""
}

variable "linux_network_interface_id" {
    default = ""
}

variable "linux_network_interface_name" {
    default = ""
}

variable "linux_pip_id" {
    default = ""
}

variable "linux_name" {
    default = ""
}

variable "loadbalancer-pubip" {
    default = "loadbalancer-pubip-4367"
}

variable "loadbalancer" {
    type = map(string) 
    default = {
        name    = "loadbalancer-4367"
        frontend_ip_configuration = "pubip-4367"
    }
}

variable "backend_address_pool" {
    default = "backendaddresspool-4367"
}

variable "loadbalancer_pool_association" {
    default = "loadbalancer-pool-association-4367"
}

variable "loadbalancer_rule" {
    type = map(string) 
    default = {
        name = "loadbalancer-rule-4367"
        protocol = "Tcp"
        frontend_port = 4367
        backend_port = 4367
        frontend_ip_configuration_name = "PublicIPAddress"
    }
}

variable "loadbalancer_probe" {
    type = map(string)
    default = {
        name                = "loadbalancer-probe-4367"
        protocol            = "Tcp"
        port                = 80
        interval_in_seconds = 5
        number_of_probes    = 2
    }
}