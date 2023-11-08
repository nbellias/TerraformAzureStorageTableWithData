resource "azurerm_storage_table_entity" "storage_table_entity" {

  storage_account_name = azurerm_storage_account.storage_account.name
  table_name           = var.seed_data.table_name
  partition_key        = var.seed_data.partition_key

  for_each = {
    for item in var.seed_data.entities : "${item.row_key}_${item.ean}" => item
  }

  row_key = each.value.row_key

  entity = {
    EAN = each.value.ean
  }

  depends_on = [azurerm_storage_table.storage_table]
}
