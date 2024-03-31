variable "components" {
  default = {
    frontend = {
      instance_type = "t2.micro"
      tags          = {
        Name    = "frontend"
        project = "expense-frontend"
      }
      port = 80
    }
    backend = {
      instance_type = "t2.small"
      tags          = {
        Name    = "backend"
        project = "expense"
      }
      port = 8080
    }
    mysql = {
      instance_type = "t3.small"
      tags          = {
        Name    = "mysql"
        project = "expense"
      }
      port = 3306
    }

  }
}