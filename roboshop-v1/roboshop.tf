resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0ad8ec6873fafd140" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0ad8ec6873fafd140" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0ad8ec6873fafd140" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0ad8ec6873fafd140" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0345275C3S6UDSOR4CU"
  name    = "frontend.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}