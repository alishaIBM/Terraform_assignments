resource "random_password" "password" {
  length  = 8
  special = true

  #override_special = "_%@"
  override_special = "!#$%&*()-_=+[]{}<>:?"
  upper            = true
  lower            = true
  min_upper        = 1
  min_lower        = 1
  min_special      = 1
}
