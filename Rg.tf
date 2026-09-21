#Creation of Resource Group
resource "azurerm_resource_group" "Rg-01" {
  name     = var.azurerm_resource_group.Rg-01.name
  location = var.azurerm_resource_group.Rg-01.location
}