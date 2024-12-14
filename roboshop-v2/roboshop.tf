terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}


variable "components" {
  default = {
    frontend = { name = "frontend-dev", machine_type = "t2.micro" }
    mongodb = { name = "mongodb-dev", machine_type = "t2.micro" }
    catalogue = { name = "catalogue-dev", machine_type = "t2.micro" }
    redis = { name = "redis-dev", machine_type = "t2.micro" }
    user = { name = "user-dev", machine_type = "t2.micro" }
    cart = { name = "cart-dev", machine_type = "t2.micro" }
    mysql = { name = "mysql-dev", machine_type = "t2.micro" }
    shipping = { name = "shipping-dev", machine_type = "t2.micro" }
    rabbitmq = { name = "rabbitmq-dev", machine_type = "t2.micro" }
    payment = { name = "payment-dev", machine_type = "t2.micro" }
  }
}


resource "aws_instance" "instances" {
    for_each               = var.components
    instance_type          = each.value["machine_type"]
    ami                    = var.ami
    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
      Name = lookup(each.value, "name", null)
    }
}