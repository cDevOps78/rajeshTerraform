resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo This module-2"
  }
}

variable "name" {
  default = "terraform"
}

output "name_value" {
  value = var.name
}