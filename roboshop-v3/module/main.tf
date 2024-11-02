resource "aws_instance" "instances" {
  ami                     = data.aws_ami.ami.id
  vpc_security_group_ids  = var.vpc_security_group_ids
  instance_type           = var.instance_type

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
}