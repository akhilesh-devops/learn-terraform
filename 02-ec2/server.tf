# variable "ami" {
#   default = "ami-0b4f379183e5706b9"
# }
#
#
# variable "vpc_security_group_ids" {
#   default = ["sg-0ad8ec6873fafd140"]
# }
#
# variable "zone_id" {
#   default = "Z0345275C3S6UDSOR4CU"
# }
#
# variable "components" {
#   default = {
#     frontend = { name = "frontend-dev", type = "t2.micro" }
#     # mongodb = { name = "mongodb-dev", type = "t2.micro" }
#     # catalogue = { name = "catalogue-dev", type = "t2.micro" }
#     # redis = { name = "redis-dev", type = "t2.micro" }
#     # user = { name = "user-dev", type = "t2.micro" }
#     # cart = { name = "cart-dev", type = "t2.micro" }
#     # mysql = { name = "mysql-dev", type = "t2.micro" }
#     # shipping = { name = "shipping-dev", type = "t2.micro" }
#     # rabbitmq = { name = "rabbitmq-dev", type = "t2.micro" }
#     # payment = { name = "payment-dev", type = "t2.micro" }
#   }
# }

resource "aws_instance" "frontend" {
  ami = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "record" {
  zone_id       = "Z0345275C3S6UDSOR4CU"
  name          = "frontend.vinithaws.online"
  type          = "A"
  ttl           = 30
  records       = [aws_instance.frontend.private_ip]
}