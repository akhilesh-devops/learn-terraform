## Simple variable

variable "fruit_name" {
  default = "apple"
}

output "message-1" {
  value = var.fruit_name
}

## List variable

variable "fruit_list" {
  default = ["apple", "banana"]
}

output "message-2" {
  value = var.fruit_list
}