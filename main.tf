terraform {
  backend "azurerm" {
      resource_group_name   = "TerraformDemo"
      storage_account_name  = "terraformsa"
      container_name        = "tfstatefile"
      key                   = "dev.terraform.tfstate"
  }
}

module "RG" {
    source      = "./modules/RG"
    rgname      = var.rgname
    location    = var.location
}