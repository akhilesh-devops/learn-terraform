variable "test" {
  default = "Hello world"
}

output "test" {
  value = var.test
}