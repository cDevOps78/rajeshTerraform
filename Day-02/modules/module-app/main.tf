resource "aws_instance" "sample" {
  ami           = var.ami_m
  instance_type = var.ami_instance_m
}