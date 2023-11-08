variable "resource_group_name" {
  default = "test-playground-dev"
}

variable "location" {
  default = "westeurope"
}

# Storage tables
variable "table_names" {
  description = "ETG Storage Tables"
  default = [
    "productdeliverymapping",
  ]
}

variable "table_entities" {
  description = "ETG Storage Table productdeliverymapping Entities"
  type = list(object({
    TableName = string
    Entity = object({
      PartitionKey = string
      RowKey       = string
      EAN          = string
  }) }))
  default = [
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "1"
        EAN          = "1234567893492"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "2"
        EAN          = "1234567893966"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "3"
        EAN          = "1234567893973"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "4"
        EAN          = "1234567894055"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "5"
        EAN          = "1234567894031"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "6"
        EAN          = "1234567894093"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "7"
        EAN          = "1234567894147"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "8"
        EAN          = "1234567894086"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "9"
        EAN          = "1234567894062"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "SomePartitionKey"
        RowKey       = "10"
        EAN          = "1234567894024"
      }
    },
  ]
}
