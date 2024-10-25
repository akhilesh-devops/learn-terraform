resource "aws_instance" "frontend" {
  for_each = var.components
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0ad8ec6873fafd140" ]

  tags = {
    Name = each.value["Name"]
  }
}

resource "aws_route53_record" "frontend" {
  for_each = var.components
  zone_id = "Z0345275C3S6UDSOR4CU"
  name    = "${each.value["Name"]}.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

components = {
  main = {
    frontend = {
      Name = "frontend-dev"
      instance_type = "t2.micro"
    },
    mongodb = {
      Name = "mongodb-dev"
      instance_type = "t2.micro"
    },
    catalogue = {
      Name = "catalogue-dev"
      instance_type = "t2.micro"
    },
    redis = {
      Name = "redis-dev"
      instance_type = "t2.micro"
    },
    user = {
      Name = "user-dev"
      instance_type = "t2.micro"
    },
    cart = {
      Name = "cart-dev"
      instance_type = "t2.micro"
    }
  }
}

variable "components" {}