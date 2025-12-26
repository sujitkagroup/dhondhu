#resource "azurerm_resource_group" "rg" {
#count    = 3
# name     = "rg_mona-${count.index}"      # 3 rg bnega rg_mona0,rg_mona1,rg_mona2 
#location   = "West Europe"
#}
#resource "azurerm_resource_group" "rg" {
#name     = var.rg_name[2]                 # variable me define value me se 2ed no. vala rg bnega
#location   = "West Europe"
#}
#resource "azurerm_resource_group" "rg" {
#count     = 3 
#name     = var.rg_name[count.index]         # 3 rg bnega jo name variable me define hoga us us name se
#location   = "West Europe"
#}
resource "azurerm_resource_group" "rg" {
count     = length(var.rg_name)
name     = var.rg_name[count.index]         # utna rg bnega jitna name variable me define hoga us us name se
location   = "West Europe"
}