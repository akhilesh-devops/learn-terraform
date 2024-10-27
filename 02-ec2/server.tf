resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(var.components, each.key, null)
  }
}

# resource "aws_route53_record" "record" {
#   zone_id = var.zone_id
#   name    = "frontend.vinithaws.online"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.instance.private_ip]
# }

variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}

variable "components" {
  default = {
    frontend = {}
    mongodb = {}
    catalogue = {}
    redis = {}
    user = {}
    cart = {}
    mysql = {}
    shipping = {}
    rabbitmq = {}
    payment = {}
  }
}