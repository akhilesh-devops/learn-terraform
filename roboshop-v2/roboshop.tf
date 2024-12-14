resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = lookup(each.value, "instance_type", null)

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

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
    redis = {
      name          = "redis-dev"
      instance_type = "t2.micro"
    }
    user = {
      name          = "user-dev"
      instance_type = "t2.micro"
    }
    cart = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mysql = {
      name          = "mysql-dev"
      instance_type = "t2.micro"
    }
    rabbitmq = {
      name          = "rabbitmq-dev"
      instance_type = "t2.micro"
    }
    shipping = {
      name          = "shipping-dev"
      instance_type = "t2.micro"
    }
    payment = {
      name          = "payment-dev"
      instance_type = "t2.micro"
    }
  }
}