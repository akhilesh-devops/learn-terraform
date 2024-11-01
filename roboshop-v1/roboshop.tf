resource "aws_instance" "instance" {
  ami                    = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type          = "t2.micro"

  tags = {
    Name = "Frontend"
  }
}