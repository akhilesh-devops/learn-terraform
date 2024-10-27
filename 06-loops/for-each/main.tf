variable "components" {
  default = {
    frontend = { name = "frontend_sg" }
    cart     = { name = "cart_sg" }
    mongodb  = { name = "mongodb_sg" }
    redis    = { name = "redis_sg"}
    catalogue = { name = "catalogue_sg" }
  }
}

resource "aws_security_group" "allow-all" {
  for_each = var.components
  name  = lookup(each.value, "name", null)
}