variable "db_name" {
  default = "postgres"
}

output "db_name" {
  value = var.db_name
}