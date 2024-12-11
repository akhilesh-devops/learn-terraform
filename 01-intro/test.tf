variable "db_name" {
  default = "mysql"
}

output "db_name" {
  value = var.db_name
}