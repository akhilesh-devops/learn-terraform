data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}

resource "aws_instance" "instances" {
  ami                     = data.aws_ami.ami.id
  vpc_security_group_ids  = var.vpc_security_group_ids
  instance_type           = var.instance_type

}

variable "instance_type" {}
variable "vpc_security_group_ids" {}
