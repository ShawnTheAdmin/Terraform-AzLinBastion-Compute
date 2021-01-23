provider "azurerm" {
  features {}
}

module "servers_uscentral" {
  source = "./modules/server"

  bastion                   = var.bastion
  bastion_name              = "${var.bastion_name}-uscentral"
  server_rg_name            = "${var.server_rg_name}-uscentral"
  server_rg_location        = "centralus"
  server_vnet_name          = "${var.server_vnet_name}-uscentral"
  server_vnet_address_space = "10.30.0.0/16"
  server_vnet_subnets = {
    server_subnet      = "10.30.10.0/24"
    GatewaySubnet      = "10.30.255.0/24"
    AzureBastionSubnet = "10.30.172.0/24"
  }
  server_name_prefix = var.server_name_prefix
  server_count       = var.server_count
  server_username    = var.server_username
  tags               = var.tags
}
