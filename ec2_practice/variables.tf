variable "components" {
  default = {
    frontend = {
      instance_type = "t2.micro"
      tags          = {
        Name    = "frontend"
        project = "expense-frontend"
      }
    }
    backend = {
      instance_type = "t2.small"
      tags          = {
        Name    = "backend"
        project = "expense"
      }
    }
    mysql = {
      instance_type = "t3.medium"
      tags          = {
        Name    = "mysql"
        project = "expense"
      }
    }
  }
}