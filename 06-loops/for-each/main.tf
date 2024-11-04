variable "components" {
  default = ["frontend", "catalogue", "redis"]
}

resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = var.instance_type

  tags = {
    Name = element(var.components, count.index)
  }
}

variable "instance_type" {}

instance_type = "t2.micro"