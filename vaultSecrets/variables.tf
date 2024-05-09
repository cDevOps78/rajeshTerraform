variable "commonsecrets" {
  default = {
    common = {
      ansible_user     = "ec2-user" 
      ansible_password = "DevOps321"
    }
    sonar = {
     sonar_user       = "admin"
     sonar_password   = "admin123" 
    }
  }
}