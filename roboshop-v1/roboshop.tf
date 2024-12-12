resource "aws_instance" "frontend" {
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0345275C3S6UDSOR4CU"
  name    = "frontend-dev.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.id]
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = "t2.micro"

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0345275C3S6UDSOR4CU"
  name    = "mongodb-dev.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.id]
}