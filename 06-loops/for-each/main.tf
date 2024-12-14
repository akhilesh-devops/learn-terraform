variable "components" {
  default = {
    payment = {
      name          = "payment-dev"
      instance_type = "t2.micro"
    }
    frontend = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name          = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t2.micro"
    }
  }
}

resource "aws_security_group" "allow-all" {
  for_each = var.components
  name     = lookup(each.value, "name", null)
}