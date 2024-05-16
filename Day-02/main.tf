#module "sample" {
#  source = "./modules/module1"
#  name   = "Chaithanya"
#}
#
#module "sample1" {
#  source = "./modules/module1"
#  name   = "DevOps321"
#}

#output "name" {
#  value = filebase64("./file1")
#}
#
#output "basename" {
#  value = basename("/root/name/fileee.xtx")
#}
#
#output "dirname" {
#  value = dirname("/root/name/fileee.xtx")
#}
#
#output "decode" {
#  value = file("VGhpcyBpcyBmaWxlMQpUaGlzIGlzIGZpbGUyClRoaXMgaXMgZmlsZTM=")
#}

#output "file-content" {
#  value = upper(file(var.filename))
#}
#
#output "file-encrypt" {
#  value = filebase64(var.filename)
#}
#
#locals {
#  fileencrypt = filebase64(var.filename)
#}
#
#output "file-decrypt" {
#  value = base64decode(local.fileencrypt)
#}
#

#output "template" {
#  value = templatefile("file1.tpl",{ name = ["chaitu","chaitu2"] })
#}

variable "name" {
  default = "chaitu1"
}

resource "null_resource" "one" {
  for_each = var.loop1

  triggers = {
    id = timestamp()
  }
  provisioner "local-exec" {
    command = <<EOF
            "echo key - ${each.key}"
            "echo value - ${each.value}"
            EOF
  }
}


variable "loop1" {
  default = {
    name1 = "chaitu1"
    name2 = "chaitu2"
    name3 = "chaitu3"
  }
}

