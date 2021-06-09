terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "interrupt" {
  name     = "interrupt-land"
  location = "Canada Central"
}

# Generate output for next level workload
output "azure_resource_group_name" {
  value = "${azurerm_resource_group.interrupt.name}"
}
