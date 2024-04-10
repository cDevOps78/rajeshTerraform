resource "null_resource" "local_exec" {
  provisioner "local-exec" {
    command = "bash script1.sh"
    environment = {
      name = "chaithanya"
      tool = "terraform"
    }
  }
}