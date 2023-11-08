resource "azurerm_storage_table" "storage_table" {
  for_each = toset(var.table_names)

  name                 = each.key
  storage_account_name = azurerm_storage_account.storage_account.name
}
