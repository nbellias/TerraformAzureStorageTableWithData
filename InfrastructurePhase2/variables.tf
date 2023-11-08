variable "resource_group_name" {
  default = "test-playground-dev"
}

variable "location" {
  default = "westeurope"
}

### seed data ###

variable "seed_data" {
  description = "ETG Storage Table productdeliverymapping Entities"
  type = object({
    table_name    = string
    partition_key = string
    entities = list(object({
      row_key = string
      ean     = string
    }))
  })
  default = {
    table_name    = "productdeliverymapping"
    partition_key = "DeliveryType"
    entities = [
      {
        row_key = "0.49"
        ean     = "5000128773492"
      },
      {
        row_key = "0.99"
        ean     = "5000128773966"
      },
      {
        row_key = "1.49"
        ean     = "5000128773973"
      },
      {
        row_key = "1.99"
        ean     = "5000128774055"
      },
      {
        row_key = "2.49"
        ean     = "5000128774031"
      },
      {
        row_key = "2.99"
        ean     = "5000128774093"
      },
      {
        row_key = "3.49"
        ean     = "5000128774147"
      },
      {
        row_key = "3.99"
        ean     = "5000128774086"
      },
      {
        row_key = "4.49"
        ean     = "5000128774062"
      },
      {
        row_key = "4.99"
        ean     = "5000128774024"
      }
    ]
  }

}