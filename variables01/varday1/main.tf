output "name" {
  value = var.name
}

output "name-length" {
    value = length(var.name) 
}

output "slpit" {
  value = split("/",var.name)[0]
  
}