terraform {
  backend "azurerm" {
    resource_group_name   = "storage-ac1"
    storage_account_name  = "testterraformaccount123"
    container_name        = "continaer"
    key                   = "dev.tfstate"
}
