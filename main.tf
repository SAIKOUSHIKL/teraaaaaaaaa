provider "azurerm" {
  features {}

  subscription_id = "a6d0e549-78fc-495b-a408-b3cdebadce37"
  client_id       = "5118d49c-0c9a-4924-b100-8ce5bd9ad819"
  client_secret   = "gV.8Q~1yLBpJ6tamSMkd2EWZDvxsP.u44bD7TcZ."
  tenant_id       = "6087e97c-96ca-4fc2-a403-b61de33d7cd0"
}
resource "azurerm_resource_group" "rg6" {
  name     = var.azurerm_resource_group
  location = var.location
}
resource "azurerm_virtual_network" "vnet6" {
  name                = var.azurerm_virtual_network
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group
  depends_on = [
    azurerm_resource_group.rg6
  ]
}
resource "azurerm_subnet" "subnet6" {
  name                 = var.azurerm_subnet6
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes6
  depends_on = [
    azurerm_virtual_network.vnet6
  ]
}
resource "azurerm_subnet" "subnet7" {
  name                 = var.azurerm_subnet7
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes7
  depends_on = [
    azurerm_virtual_network.vnet6
  ]
}
resource "azurerm_subnet" "subnet8" {
  name                 = var.azurerm_subnet8
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes8
  depends_on = [
    azurerm_virtual_network.vnet6
  ]
}
resource "azurerm_network_security_group" "nsg6" {
  name                = var.azurerm_network_security_group
  location            = var.location
  resource_group_name = var.azurerm_resource_group

  security_rule {
    name                       = var.name
    priority                   = var.priority 
    direction                  = var.direction 
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
  depends_on = [
    azurerm_resource_group.rg6
  ]
}
