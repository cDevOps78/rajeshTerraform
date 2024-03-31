provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "frontend" {
  for_each      = var.components

  ami           = "ami-009e46eef82e25fef"
  # instance_type = lookup(each.value, "instance_type", "t3.medium" )
  # instance_type = var.components[each.key].instance_type
  instance_type = var.components.each.value["instance_type"]
  tags          = lookup(lookup(var.components, each.key, "nokey"),"tags",{Name: "Default", Project: "OtherProject"})
}