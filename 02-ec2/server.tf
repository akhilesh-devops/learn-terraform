resource "aws_instance" "instance" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z0345275C3S6UDSOR4CU"
  name    = "frontend.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}