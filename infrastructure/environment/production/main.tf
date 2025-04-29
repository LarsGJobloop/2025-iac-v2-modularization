resource "hcloud_ssh_key" "main" {
  name       = "project-ssh-key"
  public_key = file("./ida_rsa.pub")
}

resource "hcloud_server" "web_app" {
  name = "web-app"
  server_type = "cax21"
  image = "debian-12"
  location = "hel1"

  ssh_keys = [ hcloud_ssh_key.main.id ]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
}
