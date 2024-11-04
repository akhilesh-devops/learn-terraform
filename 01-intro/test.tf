variable "test" {
  default = "hello world"
}

output "test" {
  value = var.test
}