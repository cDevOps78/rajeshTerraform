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
#      user = data.vault_kv_secret.secret_data.data["ansible_user"]
#      password = data.vault_kv_secret.secret_data.data["ansible_password"]
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

#resource "local_file" "foo" {
#  content  = data.vault_kv_secret.secret_data.data["ansible_user"]
#  filename = "/tmp/hello.secrets1"
#}

data "template_file" "example_template" {
  template = file("example.tmpl")
  vars = {
    username = data.vault_kv_secret.secret_data.data["ansible_user"]
    password = data.vault_kv_secret.secret_data.data["ansible_password"]
  }
}
