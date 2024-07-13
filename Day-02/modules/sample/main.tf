resource "aws_instance" "sample" {
  ami           = "ami-05"
  instance_type = var.instance_type_m
}

output "name" {
  value = var.name
}

