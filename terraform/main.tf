terraform {
  backend "azurerm" {
    resource_group_name  = "Mosquis-Test"
    storage_account_name = "mosquissa"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

data "azurerm_resource_group" "rg" {
  name = var.resourcegroup_name
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = data.azurerm_resource_group.rg.name
}