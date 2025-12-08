terraform {
  backend "azurerm" {
    resource_group_name  = "storage-ac1"
    storage_account_name = "testterraformaccount123"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
