#resource "null_resource" "sample2" {
#  provisioner "local-exec" {
#    command = "echo This is resource -1 module1"
#  }
#}
#
#variable "name" {
#  default = "modue-1"
#}

#output "nnn" {
#  value = var.name
#}

#resource "null_resource" "sample3" {
#  provisioner "local-exec" {
#    command = "echo This is resource -2 ${var.name}"
#  }
#}

#locals {
#  file_decrypt = filebase64(var.filename)
#}

resource "aws_instance" "sample" {
  ami           = var.ami
  instance_type = var.instance_type
}