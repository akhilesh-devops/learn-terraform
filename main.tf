output "message" {
  value = var.test
}

variable "test" {
  default = "Helo world"
}