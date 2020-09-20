variable "vhubmaps" {
  type = map(object({
    hub_name                = string
    hub_resource_group_name = string
    hub_location            = string
    hub_ipaddress           = string
    virtual_wan_name        = string
  }))
}

variable "virtual_wan_id_output" {
  type    = any
  default = null
}
