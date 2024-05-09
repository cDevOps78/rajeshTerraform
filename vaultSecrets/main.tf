
module "coomon" {
  source = "./module"
  secretEngine = "common"
  secretPath  = var.commonsecrets
}

