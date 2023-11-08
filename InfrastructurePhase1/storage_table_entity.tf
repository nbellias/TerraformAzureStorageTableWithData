resource "azurerm_storage_table_entity" "storage_table_entity" {
  for_each = {
    for item in var.table_entities : item.Entity.RowKey => item
  }

  storage_account_name = azurerm_storage_account.storage_account.name
  table_name           = each.value.TableName

  partition_key = each.value.Entity.PartitionKey
  row_key       = each.value.Entity.RowKey

  entity = each.value.Entity
}
