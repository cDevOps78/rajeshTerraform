data "aws_ami_ids" "devops-practice" {
  owners     = ["973714476881"]
  name_regex = "^RHEL-*"

  #  filter {
#    name   = "name"
#    values = ["RHEL-9-DevOps-Practice"]
#  }
}

output "ami" {
  value = data.aws_ami_ids.devops-practice.ids
}