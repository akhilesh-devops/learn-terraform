variable "fruits" {
  default = ["apple", "orange", "banana"]
}

output "fruits" {
  value = var.fruits[4]
}