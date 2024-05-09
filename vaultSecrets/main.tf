
module "coomon" {
  source = "./module"
  secretEngine = "common"
  secretPath  = "common"
  data        = {
   ansible_user = "ec2-user" 
   ansible_password = "DevOps321"
  }
}