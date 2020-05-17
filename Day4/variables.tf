variable "openstack_user_name" {
  description = "The user name used to connect to OpenStack"
  default     = "user_name"
}

variable "openstack_password" {
  description = "The password for the user"
  default     = "password"
}

variable "openstack_project_name" {
  description = "The name of the project (a.k.a. tenant) used"
  default     = "ibm-default"
}

variable "openstack_domain_name" {
  description = "The domain to be used"
  default     = "Default"
}

variable "openstack_auth_url" {
  description = "The endpoint URL used to connect to OpenStack"
  default     = "https://<HOSTNAME>:5000/v3/"
}

variable "openstack_image_id" {
  description = "The ID of the image to be used"
  default     = "image_id"
}

variable "instance_prefix" {
  description = "Prefix to use in instance names"
  default     = "name"
}

variable "volume_prefix" {
  description = "Prefix to use in volume name"
  default     = "volume_name"
}

variable "volume_size" {
  description = "The size of the volume"
  default     = "1"
}

variable "openstack_availability_zone" {
  description = "The availability zone"
  default     = "power"
}

variable "openstack_ssh_key_file" {
  description = "The path to the private SSH key file. Appending '.pub' indicates the public key filename"
  default     = "path to the private SSH key file"
}

variable "openstack_network_name" {
  description = "The name of the network to be used"
  default     = "network_name"
}

variable "openstack_flavor_id" {
  description = "The ID of the flavor to be used for VM deploy"
  default     = "flavor_id"
}

#-------------------------------Day4 Solution------------------------

variable "install_user" {
  description = "The user with sudo access across nodes "
  default     = "root"
}
