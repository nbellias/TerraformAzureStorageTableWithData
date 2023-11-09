variable "resource_group_name" {
  default = "test-playground-dev"
}

variable "location" {
  default = "westeurope"
}

### seed data ###

variable "seed_data" {
  description = "ETG Storage Table nikobstoragetable Entities"
  type = object({
    table_name    = string
    partition_key = string
    entities = list(object({
      row_key = string
      ean     = string
    }))
  })
  default = {
    table_name    = "nikobstoragetable"
    partition_key = "NikoBPartionKey"
    entities = [
      {
        row_key = "1"
        ean     = "1234567893492"
      },
      {
        row_key = "2"
        ean     = "1234567893966"
      },
      {
        row_key = "3"
        ean     = "1234567893973"
      },
      {
        row_key = "4"
        ean     = "1234567894055"
      },
      {
        row_key = "5"
        ean     = "1234567894031"
      },
      {
        row_key = "6"
        ean     = "1234567894093"
      },
      {
        row_key = "7"
        ean     = "1234567894147"
      },
      {
        row_key = "8"
        ean     = "1234567894086"
      },
      {
        row_key = "9"
        ean     = "1234567894062"
      },
      {
        row_key = "10"
        ean     = "1234567894024"
      }
    ]
  }

}