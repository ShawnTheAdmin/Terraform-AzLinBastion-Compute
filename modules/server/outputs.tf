output "resource_group_info" { 
    value = azurerm_resource_group.server_rg
}

output "virtual_network_info" { 
    value = azurerm_virtual_network.server_vnet
}

output "virtual_network_subnet_info" { 
    value = azurerm_subnet.subnet
}