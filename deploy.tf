variable "do_token" {}
variable "droplet_name" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_droplet" "web" {
    name = "${var.droplet_name}"
    size = "512mb"
    image = "ubuntu-16-04-x64"
    region = "ams2"
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
    connection {
        user = "root"
        type = "ssh"
        private_key = "${file(var.pvt_key)}"
        timeout = "2m"
    }
}  

output "address_web" {
    value = "${digitalocean_droplet.web.ipv4_address}"
}
