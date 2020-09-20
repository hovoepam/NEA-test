resource_group_name = "my_resource_group"
location = "westeurope"
virtual_wan_name = "my_virtual_wan"
vhubs = {
    WestEurope = {
      name      = "my_virtual_hub",
      location  = "westeurope",
      ipaddress = "10.0.1.0/24"
    },
}