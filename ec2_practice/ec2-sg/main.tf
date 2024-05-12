resource "aws_instance" "sample" {
  ami           = "ami-04ff98ccbfa41c9ad"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sample-sg.id]
}

resource "aws_security_group" "sample-sg" {
  name = "sample-sg2"
  vpc_id = "vpc-0dfa2ee2180ae8e1a"

  timeouts {
    delete = "1m"
  }

  ingress {
    from_port = 22
    to_port   = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port   = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sample-sg"
  }
}

