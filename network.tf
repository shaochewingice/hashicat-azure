data "azurerm_resource_group" "example" {
  name     = "my-resources"
}

module "network" {
  source  = "app.terraform.io/hashicat-azureshao/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name = data.azurerm_resource_group.example.id
}
