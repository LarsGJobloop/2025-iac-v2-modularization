resource "hcloud_server" "web_app" {
  name = "web-app"
  server_type = var.instance_type
  image = "debian-12"
  location = var.location

  ssh_keys = [ var.ssh_public_key_id ]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
}
