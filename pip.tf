#Creation of Public IP Address
resource "azurerm_public_ip" "pip01" {
  name                = var.azurerm_public_ip.pip01
  resource_group_name = azurerm_resource_group.Rg-01.name
  location            = azurerm_resource_group.Rg-01.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}