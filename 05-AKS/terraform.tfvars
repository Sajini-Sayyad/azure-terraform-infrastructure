resource_group_name = "rg-azure-terraform"
vnet_name            = "vnet-azure-infrastructure"

aks_name   = "aks-azure-terraform-dev"
dns_prefix = "aks-azure-terraform-dev"

node_vm_size = "Standard_DS2_v2"
node_count   = 1

# Leave null to let Azure use the default supported version
kubernetes_version = null
