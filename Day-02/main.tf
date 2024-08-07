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
##
##output "dirname" {
##  value = dirname("/root/name/fileee.xtx")
##}
##
##output "decode" {
##  value = file("VGhpcyBpcyBmaWxlMQpUaGlzIGlzIGZpbGUyClRoaXMgaXMgZmlsZTM=")
##}
#
##output "file-content" {
##  value = upper(file(var.filename))
##}
##
##output "file-encrypt" {
##  value = filebase64(var.filename)
##}
##
##locals {
##  fileencrypt = filebase64(var.filename)
##}
##
##output "file-decrypt" {
##  value = base64decode(local.fileencrypt)
##}
##
#
##output "template" {
##  value = templatefile("file1.tpl",{ name = ["chaitu","chaitu2"] })
##}
#
#variable "name" {
#  default = "chaitu1"
#}
#
#resource "null_resource" "one" {
#  for_each = var.loop1
#
#  triggers = {
#    id = var.name
#  }
#  provisioner "local-exec" {
#    command = "echo key - ${each.value.name}"
#
#  }
#}
#
#
#variable "loop1" {
#  default = {
#    name1 = {
#      name = "chaitu1"
#    }
#    name2 = {
#      name = "chaitu2"
#    }
#    name3 = {
#      name = "chaitu3"
#    }
#  }
##}
#
#module "name" {
#  source = "./modules/module1"
#  name = var.name1
#}
#
#variable "name1" {
#  default = "chairirir"
#}

#module "front" {
#  source = "./modules/module-app"
#  ami_m = var.ami
#  ami_instance_m = var.ami_instance_type
#}
#
#module "backend" {
#  source = "./modules/module-app"
#  ami_m = var.ami
#  ami_instance_m = "t2.micro"
#}
#
#module "mysql" {
#  source = "./modules/module-app"
#  ami_m = var.ami
#  ami_instance_m = var.ami_instance_type
#}

#module "frontend" {
#  source = "./modules/sample"
#  instance_type_m = var.instance_type
#}
#
#module "backend" {
#  source = "./modules/sample"
#  instance_type_m = var.instance_type
#}

#
#output "name" {
#  value = lookup(mod
##}
#
#module "sample" {
#  source = "./modules/module2"
#}
#
#output "root_name" {
#  value = module.sample.name_value
#}

#module "module-1" {
#  source = "./modules/module1"
#}
# module "module-2" {
#   source = "./modules/module2"
#   job = module.module-1.nnn
# }

module "front-instance" {
  source = "./modules/module1"
  ami = var.amip
  instance_type = var.instancep
}

module "front-instance" {
  source = "./modules/module1"
  ami = var.amip
  instance_type = var.instancep
}
