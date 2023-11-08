resource "azurerm_storage_table" "storage_table" {
  name                 = var.seed_data.table_name
  storage_account_name = azurerm_storage_account.storage_account.name
}
