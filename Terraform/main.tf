provider "azurerm" {
  features {}
  subscription_id = "ffb20f85-a6a5-4637-a47b-3125b82cd858"
}

resource "azurerm_resource_group" "exam" {
  name     = "examResourceGroup"
  location = "East US"
}

resource "azurerm_virtual_network" "exam" {
  name                = "examVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.exam.location
  resource_group_name = azurerm_resource_group.exam.name
}

resource "azurerm_subnet" "exam" {
  name                 = "examSubnet"
  resource_group_name  = azurerm_resource_group.exam.name
  virtual_network_name = azurerm_virtual_network.exam.name
  address_prefixes     = ["10.0.1.0/24"]
}
