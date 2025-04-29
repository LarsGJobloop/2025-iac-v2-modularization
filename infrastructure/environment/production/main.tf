resource "hcloud_ssh_key" "main" {
  name       = "project-ssh-key"
  public_key = file("./ida_rsa.pub")
}

module "web_app" {
  source = "../../modules/web-app"

  location = "hel1"
  instance_type = "cx22"
  ssh_public_key_id = hcloud_ssh_key.main.id
}
