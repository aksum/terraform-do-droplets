terraform-do-droplets
=====================

Manage DigitalOcean droplets with Terraform.

Getting started
---------------

* Validate configuration: `terraform vaildate`
* Plan droplet creation: `terraform plan -var "droplet_name=aksum"`
* Create droplet: `terraform apply -var "droplet_name=aksum"`
* Destroy droplet: `terraform destroy -var "droplet_name=aksum"`



