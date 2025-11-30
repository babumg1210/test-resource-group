provider "azurerm" {
  features {}
}

module "rg" {
  source   = "../../modules/resourcegroup"
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

