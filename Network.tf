#Creation of virtual network 
resource "azurerm_virtual_network" "vnet-01" {
  name                = var.azurerm_virtual_network.vnet-01.name 
  location            = azurerm_resource_group.vnet-01.location
  resource_group_name = azurerm_resource_group.vnet-01.name
  address_space       = ["10.0.0.0/16"]
}

#Creation of subnet
resource "azurerm_subnet" "subnet-01" {
    name             = var.azurerm_subnet.subnet-01
    address_prefixes = ["10.0.1.0/24"]

  }