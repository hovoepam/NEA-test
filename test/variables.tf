variable "resource_group_name" {
  type = string
}

variable "location" {  
  type = string
}

variable "virtual_wan_name" {
  type = string
}

variable "vhubs" {
  type = map(object({
    name      = string
    location  = string
    ipaddress   = string
  }))
}
