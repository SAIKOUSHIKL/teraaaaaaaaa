provider "azurerm" {
  features {}

  subscription_id = "a6d0e549-78fc-495b-a408-b3cdebadce37"
  client_id       = "5118d49c-0c9a-4924-b100-8ce5bd9ad819"
  client_secret   = "gV.8Q~1yLBpJ6tamSMkd2EWZDvxsP.u44bD7TcZ."
  tenant_id       = "6087e97c-96ca-4fc2-a403-b61de33d7cd0"
}
resource "azurerm_resource_group" "rg1a" {
  name     = var.azurerm_resource_group
  location = var.location
}
resource "azurerm_virtual_network" "vnet1a" {
  name                = var.azurerm_virtual_network
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group
  depends_on = [
    azurerm_resource_group.rg1a
  ]
}
resource "azurerm_subnet" "subnet1a" {
  name                 = var.azurerm_subnet1a
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes1a
  depends_on = [
    azurerm_virtual_network.vnet1a
  ]
}
resource "azurerm_subnet" "subnet2b" {
  name                 = var.azurerm_subnet2b
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes2b
  depends_on = [
    azurerm_virtual_network.vnet1a
  ]
}
resource "azurerm_subnet" "subnet3c" {
  name                 = var.azurerm_subnet3c
  resource_group_name  = var.azurerm_resource_group
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes3c
  depends_on = [
    azurerm_virtual_network.vnet1a
  ]
}
resource "azurerm_network_security_group" "nsg1a" {
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
    azurerm_resource_group.rg1a
  ]
}
