output "vhuboutput" {
value = "${zipmap(values(azurerm_virtual_hub.vh)[*].name, values(azurerm_virtual_hub.vh)[*].id)}"
}