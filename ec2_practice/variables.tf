variable "components" {
  default = {
    frontend = {
      instance_type = "t2.micro"
      tags          = {
        Name    = "frontend"
        project = "expense"
      }
    }
    backend = {
      instance_type = "t2.small"
      tags          = {
        Name    = "backend"
        project = "expense"
      }
    }
  }
}