provider "openstack" {
  user_name   = "${var.openstack_user_name}"
  password    = "${var.openstack_password}"
  tenant_name = "${var.openstack_project_name}"
  domain_name = "${var.openstack_domain_name}"
  auth_url    = "${var.openstack_auth_url}"
  insecure    = true
}

resource "random_id" "rand" {
  byte_length = 4
}

resource "openstack_compute_keypair_v2" "key-pair" {
  name       = "terraform-key-pair-${random_id.rand.hex}"
  public_key = "${file("${var.openstack_ssh_key_file}.pub")}"
}

resource "openstack_compute_instance_v2" "openstack-vm" {
  name              = "${var.instance_prefix}-vm-${random_id.rand.hex}"
  image_id          = "${var.openstack_image_id}"
  flavor_id         = "${var.openstack_flavor_id}"
  key_pair          = "${openstack_compute_keypair_v2.key-pair.name}"
  availability_zone = "${var.openstack_availability_zone}"

  network {
    name = "${var.openstack_network_name}"
  }
}

resource "openstack_blockstorage_volume_v2" "volume_1" {
  depends_on = ["openstack_compute_instance_v2.openstack-vm"]
  name       = "${var.volume_prefix}-volume"
  size       = "${var.volume_size}"
}

resource "openstack_compute_volume_attach_v2" "va_1" {
  instance_id = "${openstack_compute_instance_v2.openstack-vm.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.volume_1.id}"
}
