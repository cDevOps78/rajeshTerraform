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

#data "template_file" "example_template" {
#  template = file("./example1.tmpl")
#  vars = {
#    username = data.vault_kv_secret.secret_data.data["ansible_user"]
#    password = data.vault_kv_secret.secret_data.data["ansible_password"]
#  }
#
#}

#resource "null_resource" "pass" {
#  provisioner "local-exec" {
#    command = "echo User- ${data.vault_kv_secret.secret_data.data["ansible_user"]}"
#  }
#}

resource "local_file" "foo" {
  content  = "ansible_user: ${data.vault_kv_secret.secret_data.data["ansible_user"]}\nansible_password: ${data.vault_kv_secret.secret_data.data["ansible_password"]}"
  filename = "./secrets.yaml"
}

##---with fetching secrets---##

#resource "null_resource" "ansible_playbook" {
#  provisioner "local-exec" {
#    command = "/usr/local/bin/ansible-playbook -e '@secrets.yaml' playbook.yaml"
#  }
#}

##---with environment secrets---##

resource "null_resource" "ansible_playbook" {
  provisioner "local-exec" {
    command = "/usr/local/bin/ansible-playbook -e ansible_user=${ansibleUser} -e  ansible_password=${ansiblePassword} playbook.yaml"

    environment = {
      ansibleUser     = "ec2-user"
      ansiblePassword = "DevOps321"
    }

  }
}
