variable "rg_name"{
default="mudassir"
}

resource "azurerm_resource_group" "example" {
  name=var.rg_name
  location = "westus"
}

provider "azurerm" {
  # Configuration options
  features {}
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
  subscription_id = var.subscription_id
}

variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}
# # resource "azurerm_linux_virtual_machine" "example" {
# #     name = var.vm_name
# #     resource_group_name = var.rg_name
# #    location = azurerm_resource_group.example.location
# #    size = "Standard_F2"
# #    admin_admin_username = var.vm_user  
# # }
