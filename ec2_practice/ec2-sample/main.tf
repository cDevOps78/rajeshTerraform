provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "frontend" {
  for_each      = var.components

  ami           = "ami-009e46eef82e25fef"
  # instance_type = lookup(each.value, "instance_type", "t3.medium" )
  instance_type = each.value["instance_type"]

  # instance_type = var.components[each.key].instance_type
  # tags          = lookup(lookup(var.components, each.key, "nokey"),"tags",{Name: "Default", Project: "OtherProject"})
  tags            = var.components[each.key].tags
}


#output "name" {
#  value = var.components["frontend"]["tags"]["project"]
#}

resource "aws_security_group" "example" {
  for_each = var.components

  name        = "${each.key}_group"
  description = "This is for ${each.key}_group"
  vpc_id      = "vpc-02ce5d95c660ecd53"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = each.value["port"]
    to_port     = each.value["port"]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${each.key}"
  }
}

   # aws_security_group.example["frontend"] will be created


