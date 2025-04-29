resource "hcloud_server" "web_app" {
  name = "web-app"
  server_type = "cax21"
  image = "debian-12"
  location = "hel1"

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
}
