output "vm_name" {
  description = "Virtual machine name"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_id" {
  description = "Virtual machine resource ID"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "public_ip_address" {
  description = "Public IP address of VM"
  value       = azurerm_public_ip.vm_pip.ip_address
}

output "private_ip_address" {
  description = "Private IP address of VM"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "ssh_command" {
  description = "SSH command to connect to VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.vm_pip.ip_address}"
}

output "managed_identity_principal_id" {
  description = "System assigned managed identity principal ID"
  value       = azurerm_linux_virtual_machine.vm.identity[0].principal_id
}
