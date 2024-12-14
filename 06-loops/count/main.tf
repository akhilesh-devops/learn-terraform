resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = var.ami
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = var.instance_type

  tags = {
    Name = element(var.components, count.index)
  }
}


variable "components" {
  default = ["frontend", "mongodb", "catalogue", "redis", "user", "cart", "shipping"]
}

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

variable "instance_type" {
  default = "t2.micro"
}