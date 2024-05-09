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

variable "expense-dev" {
  default = {
    frontend = {
      APP_VERSION     = ""
      NEW_RELIC_NGINX = "${var.NEW_RELIC_NGINX}"
    }
    backend = {
      APP_VERSION            = ""
      mysql_login_password   = "ExpenseApp@1"
      mysql_login_user       = "root"
      NEW_RELIC_BACKEND      = "${var.NEW_RELIC_BACKEND}"
    }
    mysql = {
      mysql_root_password = "ExpenseApp@1"
    }
  }
}