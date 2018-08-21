output "icp_url" {
  value = "https://${ibm_compute_vm_instance.master.0.ipv4_address}:8443"
}

output "kibana_install_value" {
  value = "${var.kibana_install}"
}