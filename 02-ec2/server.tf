resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = var.ami
  instance_type = lookup(each.value, "type", null)
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each      = var.components
  zone_id = var.zone_id
  name    = "${each.key}.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
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
    frontend = { name = "frontend-dev", type = "t2.micro" }
    mongodb = { name = "mongodb-dev", type = "t2.micro" }
    catalogue = { name = "catalogue-dev", type = "t2.micro" }
    redis = { name = "redis-dev", type = "t2.micro" }
    user = { name = "user-dev", type = "t2.micro" }
    cart = { name = "cart-dev", type = "t2.micro" }
    mysql = { name = "mysql-dev", type = "t2.micro" }
    shipping = { name = "shipping-dev", type = "t2.micro" }
    rabbitmq = { name = "rabbitmq-dev", type = "t2.micro" }
    payment = { name = "payment-dev", type = "t2.micro" }
  }
}