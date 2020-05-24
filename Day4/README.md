## Setup this repo :
On your Terraform client machine:
1. `git clone https://github.com/alishaIBM/Terraform_assignments.git`
2. `cd Day4`

## Setup Terraform variables :
Edit the var.tfvars with the foll. variables :
* `openstack_auth_url` : Endpoint URL used to connect to Openstack.
* `openstack_user_name` : OpenStack username
* `openstack_password` : Openstack password
* `openstack_project_name` : The name of the project (a.k.a. tenant) used
* `openstack_domain_name` : The domain to be used
* `openstack_image_id` : The ID of the image to be used
* `openstack_availability_zone` : The availability zone
* `openstack_ssh_key_file` : The path to the private SSH key file
* `openstack_network_name` : The name of the network to be used
* `openstack_flavor_id` : The ID of the flavor to be used for VM deploy
* `instance_prefix` : Prefix to use in instance names
* `volume_prefix` : Prefix to use in volume name
* `volume_size` : The size of the volume
* `install_user` : The user with sudo access

## How-to run Terraform resources
Under Terraform_assignments/Day4 directory:
1. `terraform init`
2. `terraform apply -var-file var.tfvars`
