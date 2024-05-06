output "name" {
  value = nonsensitive(var.name)
}

output "name-length" {
    value = length(var.name) 
}

output "slpit" {
  value = length(split("/",var.name))
  
}