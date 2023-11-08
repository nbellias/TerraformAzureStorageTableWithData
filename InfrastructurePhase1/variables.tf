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
        PartitionKey = "DeliveryType"
        RowKey       = "0.49"
        EAN          = "5000128773492"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "0.99"
        EAN          = "5000128773966"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "1.49"
        EAN          = "5000128773973"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "1.99"
        EAN          = "5000128774055"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "2.49"
        EAN          = "5000128774031"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "2.99"
        EAN          = "5000128774093"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "3.49"
        EAN          = "5000128774147"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "3.99"
        EAN          = "5000128774086"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "4.49"
        EAN          = "5000128774062"
      }
    },
    {
      TableName = "productdeliverymapping"
      Entity = {
        PartitionKey = "DeliveryType"
        RowKey       = "4.99"
        EAN          = "5000128774024"
      }
    },
  ]
}
