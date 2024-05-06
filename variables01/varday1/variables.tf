variable "name" {
    default = "chaithanya/ram"
}

variable "splits" {
  default = "${split("/", var.name)[0]}"
}

variable "length" {
  default = "${length(var.name)}"
}

#