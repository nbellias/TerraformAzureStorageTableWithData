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
    "nikobstoragetable",
  ]
}

variable "table_entities" {
  description = "ETG Storage Table nikobstoragetable Entities"
  type = list(object({
    TableName = string
    Entity = object({
      PartitionKey = string
      RowKey       = string
      EAN          = string
  }) }))
  default = [
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "1"
        EAN          = "1234567893492"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "2"
        EAN          = "1234567893966"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "3"
        EAN          = "1234567893973"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "4"
        EAN          = "1234567894055"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "5"
        EAN          = "1234567894031"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "6"
        EAN          = "1234567894093"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "7"
        EAN          = "1234567894147"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "8"
        EAN          = "1234567894086"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "9"
        EAN          = "1234567894062"
      }
    },
    {
      TableName = "nikobstoragetable"
      Entity = {
        PartitionKey = "NikoBPartionKey"
        RowKey       = "10"
        EAN          = "1234567894024"
      }
    },
  ]
}
