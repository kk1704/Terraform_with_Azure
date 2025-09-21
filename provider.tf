terraform {
  required_providers {
    azurerm = { source = "hashicorp/azurerm" 
    version = ">= 4.45.0" }
  }
  required_version = ">= 1.11.0"
}

provider "azurerm" {
  features {}
  subscription_id = "b578597b-0274-491d-a2d6-3ee2c9b899ce"
}