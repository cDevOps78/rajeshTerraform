resource "null_resource" "top" {
  provisioner "local-exec" {
    command = "echo This module from1 vaule ${var.passing}"
  }
}

variable "passing" {}