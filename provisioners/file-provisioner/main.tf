resource "aws_instance" "prod_server" {
  ami           = data.aws_ami_ids.devops-practice.ids[0]
  instance_type = "t2.micro"
  tags          = {
    Name = "prod-server"
  }

  provisioner "remote-exec" {
    on_failure = continue
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.private_ip
    port     = 22
  }
}

resource "null_resource" "rop1" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.prod_server.private_ip
      port     = 22
    }
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}