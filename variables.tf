variable "azurerm_resource_group" {
    type = string
}
variable "location" {
    type = string
}
variable "azurerm_virtual_network" {
    type = string
}
variable "address_space" {
    type = list
}
variable "azurerm_subnet6" {
    type = string
}
variable "address_prefixes6" {
    type = list
}
variable "azurerm_subnet7" {
    type = string
}
variable "address_prefixes7" {
    type = list
}
variable "azurerm_subnet8" {
    type = string
}
variable "address_prefixes8" {
    type = list
}
variable "azurerm_network_security_group" {
    type = string
}
variable "name" {
    type = string
}
variable "priority" {
    type = string
}
variable "direction" {
    type = string
}
variable "access" {
    type = string
}
variable "protocol" {
    type = string
}
variable "source_port_range" {
    type = string
}
variable "destination_port_range" {
    type = string
}
variable "source_address_prefix" {
    type = string
}
variable "destination_address_prefix" {
    type = string
}