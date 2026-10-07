variable "resource_group_name" {
  description = "Existing Azure Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "vnet_name" {
  description = "Existing VNet name"
  type        = string
}

variable "vm_subnet_name" {
  description = "Existing subnet name for VM"
  type        = string
  default     = "vm-subnet"
}

variable "vm_name" {
  description = "Azure VM name"
  type        = string
}

variable "computer_name" {
  description = "Hostname of the VM"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key used to access the VM"
  type        = string
  sensitive   = true
}

variable "allowed_ssh_ip" {
  description = "Public IP/CIDR allowed to access SSH"
  type        = string
}

variable "os_disk_size_gb" {
  description = "OS disk size in GB"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)

  default = {
    Environment = "dev"
    Project     = "azure-terraform-infrastructure"
    ManagedBy   = "Terraform"
    Owner       = "DevOps"
  }
}
