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