output "name" {
  # value = nonsensitive(var.name)
  value = strcontains(var.name, "-")
}

output "ami-is" {
  value = startswith(var.ami-id,"Ami-") 
}

# output "name-length" {
#     # value = nonsensitive(length(var.name))
#     value = n(var.name) 
# }

# output "slpit" {
#   # value = nonsensitive(length(split("/",var.name)))  
# }

