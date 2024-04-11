#resource "null_resource" "local_exec" {
#  provisioner "local-exec" {
#    command = "bash script1.sh"
#    environment = {
#      name = "chaithanya"
#      tool = "terraform"
#    }
#    when = destroy
#  }
#}
#
#
#resource "null_resource" "apply" {
#  provisioner "local-exec" {
#    command = "echo this is apply command"
#  }
#}


resource "null_resource" "first" {
  provisioner "local-exec" {
    command = "echo this is $Name-provisioner"
    environment = {
      Name = "first"
    }
  }
}

resource "null_resource" "second" {
  provisioner "local-exec" {
    // on_failure = continue
    command = "bash script2.sh"
    environment = {
      Name = "first"
    }
  }
}

resource "null_resource" "three" {
  depends_on = [null_resource.first]
  provisioner "local-exec" {
    command = "echo this is $Name-provisioner"
    environment = {
      Name = "three"
    }
  }
}