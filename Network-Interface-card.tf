#Creation of Network Interface Card
resource "azurerm_network_interface" "nic-01" {
  name                = var.azurerm_network_interface.nic-01
  location            = azurerm_resource_group.nic-01.location
  resource_group_name = azurerm_resource_group.nic-01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-01.id
    private_ip_address_allocation = "Dynamic"
  }
} 