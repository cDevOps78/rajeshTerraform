resource "null_resource" "top1" {
  provisioner "local-exec" {
    command = "echo This module from1 vaule ${var.passing}"
  }
}

variable "passing" {}