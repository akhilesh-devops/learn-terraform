variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue-dev"
      instance_type = "t2.micro"
    }
  }
}

resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = var.ami
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = lookup(each.value, "instance_type", null)

  tags = {
    Name = lookup(each.value, "name", null)
  }
}



variable "ami" {}