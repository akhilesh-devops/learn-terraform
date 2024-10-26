variable "fruit_name" {
  default = "apple"
}

output "message" {
  value = var.fruit_name
}