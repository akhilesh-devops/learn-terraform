resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = "t2.micro"

  tags = {
    Name = element(var.components, count.index)
  }
}


variable "components" {
  default = ["frontend", "mongodb", "catalogue", "redis", "user", "cart"]
}