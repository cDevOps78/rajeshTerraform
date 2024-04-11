#resource "aws_instance" "test" {
#  ami           = "ami-090252cbe067a9e58"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = ["sg-0a88820d7b4d3ff2a"]
#}
#
#resource "null_resource" "test1" {
#  provisioner "remote-exec" {
#    connection {
#      type = "ssh"
#      user = ""
#      password = ""
#      host = aws_instance.test.private_ip
#    }
#    inline = [
#         "sudo yum install nginx -y"
#    ]
#  }
#}


data "vault_kv_secret" "secret_data" {
  path = "common/ssh"
}
