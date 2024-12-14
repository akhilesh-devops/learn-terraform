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
      name          = "catalogue-dev"
      instance_type = "t2.micro"
    }
  }
}

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

resource "aws_instance" "instances" {
  for_each               =    var.components
  ami                    =    var.ami
  vpc_security_group_ids =    var.vpc_security_group_ids
  instance_type          =    each.value["instance_type"]

  tags = {
    Name = each.value["name"]
  }
}