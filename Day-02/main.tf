#module "sample" {
#  source = "./modules/module1"
#  name   = "Chaithanya"
#}
#
#module "sample1" {
#  source = "./modules/module1"
#  name   = "DevOps321"
#}

output "name" {
  value = "Upper name = upper(var.numbers)"
}