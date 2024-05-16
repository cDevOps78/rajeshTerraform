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

module "module1" {
  source = "./modules/module1"
  filename = "./file1"
}
module "module2" {
  source = "./modules/module2"
  passing = element(module.module1.mainvalue,0)
}