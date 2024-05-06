output "name" {
  # value = nonsensitive(var.name)
  value = strcontains(var.name, "-")
}

output "ami-is" {
  value = strrev(var.name)
}

# output "name-length" {
#     # value = nonsensitive(length(var.name))
#     value = n(var.name) 
# }

# output "slpit" {
#   # value = nonsensitive(length(split("/",var.name)))  
# }