terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01514367RG"
    storage_account_name = "tfstaten01514367sa"
    container_name       = "tfstatefiles"
    key                  = "VxD2lfAPW65sjrQqcgesvgUenEw/FZRSyLI95FHRM5xu1ttzjAFCcxiUNyV34M6Z0ew/WbEdy3TE+ASt9buQTg=="

  }
}