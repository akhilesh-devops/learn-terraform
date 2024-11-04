variable "test" {
  default = "hello world"
}

output "message" {
  value = var.test
}