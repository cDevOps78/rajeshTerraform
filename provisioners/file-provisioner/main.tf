resource "aws_instance" "prod_server" {
  ami           = data.aws_ami_ids.devops-practice.ids[0]
  instance_type = "t2.micro"
  tags          = {
    Name = "prod-server"
  }

  provisioner "file" {
    source      = "./index.html"
    destination = "/tmp/index.html"
  }

}