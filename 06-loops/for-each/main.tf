variable "components" {
  default = {
    frontend = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name          = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name          = "catalogue-dev"
      instance_type = "t2.micro"
    }
  }
}

resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = each.value["instance_type"]

  tags = {
    Name = each.value["name"]
  }
}