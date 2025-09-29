resource "azurerm_resource_group" "rg" {
  name     = "welcomerg"
  location = "eastus"
}

resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rg]
  name                     = "welcomestg"
  location                 = "eastus"
  resource_group_name      = "welcomerg"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# resource "azurerm_storage_container" "cntr" {
#   depends_on            = [azurerm_storage_account.stg]
#   name                  = "telecomcntr"
#   storage_account_id    = azurerm_storage_account.stg.id
#   container_access_type = "blob"
# }
