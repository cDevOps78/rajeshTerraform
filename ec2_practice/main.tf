provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "frontend" {
  for_each      = var.components

  ami           = "ami-009e46eef82e25fef"
  instance_type = lookup(each.value, "instance_type", "t3.medium" )
  tags          = lookup(lookup(var.components, each.key, "nokey"),"tags",{Name: "Default", Project: "OtherProject"})
}