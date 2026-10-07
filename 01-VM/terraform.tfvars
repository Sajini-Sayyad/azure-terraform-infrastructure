resource_group_name = "rg-azure-terraform"

location = "Central India"

vnet_name      = "vnet-azure-infrastructure"
vm_subnet_name = "vm-subnet"

vm_name        = "vm-dev-linux"
computer_name  = "dev-linux-vm"
vm_size        = "Standard_B2s"

admin_username = "azureadmin"

# Replace with your actual public SSH key
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQ..."

# IMPORTANT:
# Use your own public IP.
# Example: 49.204.100.10/32
allowed_ssh_ip = "YOUR_PUBLIC_IP/32"

os_disk_size_gb = 30

tags = {
  Environment = "dev"
  Project     = "azure-terraform-infrastructure"
  ManagedBy   = "Terraform"
  Owner       = "DevOps"
}
