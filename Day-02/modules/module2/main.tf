resource "null_resource" "module2" {
  provisioner "local-exec" {
    command = "echo This is from module2 and the value from moduel ${var.job}"
  }
}

variable "job" {}