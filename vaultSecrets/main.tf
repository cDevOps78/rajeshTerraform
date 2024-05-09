
module "coomon" {
  source = "./module"
  secretEngine = "common"
  secretPath  = var.commonsecrets
}

module "expense-dev" {
  source = "./module"
  secretEngine = "expense-dev"
  secretPath = local.expense-dev
}

