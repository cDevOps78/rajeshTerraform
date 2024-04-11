resource "null_resource" "local_exec" {
  provisioner "local-exec" {
    command = "bash script1.sh"
    environment = {
      name = "chaithanya"
      tool = "terraform"
    }
    when = destroy
  }
}


resource "null_resource" "apply" {
  provisioner "local-exec" {
    command = "echo this is apply command"
  }
}