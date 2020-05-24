output "vm_ip" {
  value = "${openstack_compute_instance_v2.openstack-vm.network.0.fixed_ip_v4}"
}

output "volume_name" {
  value = "${openstack_blockstorage_volume_v2.volume_1.name}"
}

output "html_file_content" {
  depends_on = ["http.file_content"]
  value      = "Html file content : ${data.http.file_content.body}"
}
