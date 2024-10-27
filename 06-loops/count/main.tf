variable "components" {
  default = ["catalogue", "user", "frontend", "mongodb"]
}

resource "aws_instance" "instance" {
  count         = length(var.components)
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = element(var.components, count.index)
    # Name = var.components[count.index]
  }
}

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

resource "aws_security_group" "allow-all" {
  count = length(var.components)
  name  = element(var.components, count.index)
}
