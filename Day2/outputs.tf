output "icp_credentials" {
  value = "Hi ${var.user} . Your passw0rd is ${module.randpass.password}"
}
