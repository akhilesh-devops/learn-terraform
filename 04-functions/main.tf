variable "fruits" {
  default = ["apple", "orange", "banana"]
}

output "fruits" {
  # value = var.fruits[4]
  value = element(var.fruits, 4)
}