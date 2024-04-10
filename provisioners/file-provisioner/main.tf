resource "aws_instance" "prod_server" {
  ami           = data.aws_ami_ids.devops-practice.ids[0]
  instance_type = "t2.micro"
  tags          = {
    Name = "prod-server"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx"
    ]
  }
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
    port     = 22
  }

}