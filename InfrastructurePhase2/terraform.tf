# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {
    resource_group_name  = "test-playground-dev"
    storage_account_name = "nikobstoracc"
    container_name       = "terraformstates"
    key                  = "terraform.tfstate"
  }

  required_version = ">= 1.1.0"
}