resource "azurerm_virtual_network" "vnet" {
  name                = "${var.project}-${var.env}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.address_space]
}

resource "azurerm_subnet" "subnets" {
  for_each = { for s in var.subnets : s.name => s }

  name                 = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value.address_prefix]
}
