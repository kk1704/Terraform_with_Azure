resource "azurerm_resource_group" "rg" {
  name     = "tf-practice-rg"
  location = "Central India"
}

resource "azurerm_service_plan" "asp" {
  name                = "tf-practice-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "F1"
  os_type = "Linux"
}

resource "azurerm_linux_web_app" "linuxwebapp" {
  name = "tf-practice-appservice"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.asp.id
  site_config {
    always_on = false
  }
}