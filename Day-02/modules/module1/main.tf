resource "null_resource" "sample2" {
  provisioner "local-exec" {
    command = "echo This is resource -1 - ${var.name}"
  }
}

#resource "null_resource" "sample3" {
#  provisioner "local-exec" {
#    command = "echo This is resource -2 ${var.name}"
#  }
#}

#locals {
#  file_decrypt = filebase64(var.filename)
#}