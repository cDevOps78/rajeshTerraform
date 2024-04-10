resource "aws_instance" "prod_server" {
  ami           = data.aws_ami_ids.devops-practice.ids[0]
  instance_type = "t2.micro"
  tags          = {
    Name = "prod-server"
  }
}

resource "null_resource" "file" {


  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = aws_instance.prod_server.private_ip
    port     = 22
  }
  provisioner "file" {
    source      = "script1.sh"
    destination = "/tmp/script1.sh"
  }
}

resource "null_resource" "rop1" {
  depends_on = [null_resource.file]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.prod_server.private_ip
      port     = 22
    }
    inline = [
      "#!/bin/bash",
      "sudo bash /tmp/script1.sh"
   ]
  }
}