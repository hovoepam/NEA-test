resource "azurerm_virtual_hub" "vh" {
  for_each            = var.vhubmaps
  name                = each.value.hub_name
  resource_group_name = each.value.hub_resource_group_name
  location            = each.value.hub_location
  virtual_wan_id      = lookup(var.virtual_wan_id_output,each.value.virtual_wan_name,"ERROR")
  address_prefix      = each.value.hub_ipaddress
}

resource "azurerm_vpn_gateway" "vh-vpn" {
  for_each            = var.vhubmaps
  name                = each.value.vpn_gw_name
  location            = each.value.hub_location
  resource_group_name = each.value.hub_resource_group_name
  virtual_hub_id      = azurerm_virtual_hub.vh.id
  scale_unit          = 1
  bgp_settings {
    asn               = 65515
  }  
}