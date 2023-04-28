output "ubuntu_vm_ip_address" {
  description = "IP address of the Ubuntu VM"
  value       = azurerm_network_interface.ubuntu_nic.private_ip_address
}

output "windows_vm_ip_address" {
  description = "IP address of the Windows VM"
  value       = azurerm_network_interface.windows_nic.private_ip_address
}