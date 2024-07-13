variable "name" {
  default = "terraform"
}

output "name_value" {
  value = var.name
}