
provider "azurerm" {
  features {}

#  subscription_id = "0615a8ec-9240-4666-bd0e-6dde52ce08a9"
#  tenant_id       = "02495ddd-54e3-42e8-ad3a-d1f2091f0034"
#  client_id       = "4beb6248-b0e2-4cbb-b43c-a48805c49d98"
#   client_secret   = "uXD8Q~OfWCLU~JSN9ZSN55KBD9Ix3oGhuVIrwaZl"
}

module "rg" {
  source   = "../../modules/resource_group"
  project  = var.project
  env      = var.env
  location = var.location
}

module "network" {
  source              = "../../modules/network"
  project             = var.project
  env                 = var.env
  location            = var.location
  address_space       = var.address_space
  subnets             = var.subnets
  resource_group_name = module.rg.name
}


