variable "name" {
    default = "chaithanya-ram-ram1"
    validation {
      condition = length(split("-".var.name)) <= 2
      error_message = "The length of name should be less than 2" 
    }
   # sensitive = true
}

# variable "splits" {
#   default = "${split("/", var.name)[0]}"
# }

# variable "length" {
#   default = "${length(var.name)}"
# }

#