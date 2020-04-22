# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.38.0"
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
