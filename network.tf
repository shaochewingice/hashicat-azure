resource "azurerm_resource_group" "example" {
  name     = "shaoliu-workshop"
  location = "Canada Central"
}

module "network" {
  source  = "app.terraform.io/hashicat-azureshao/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name = azurerm_resource_group.example.name
}
