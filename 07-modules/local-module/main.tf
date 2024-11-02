data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}

resource "aws_instance" "instance" {
  count                   = length(var.name)
  vpc_security_group_ids  = var.vpc_security_group_ids
  instance_type           = var.instance_type
  ami                     = data.aws_ami.ami.id

  tags = {
    Name = element(var.name, count.index)
  }
}

variable "name" {}
variable "instance_type" {}
variable "vpc_security_group_ids" {}