# variable "name" {}

variable "filename" {}

output "mainvalue" {
  value = local.file_decrypt
}