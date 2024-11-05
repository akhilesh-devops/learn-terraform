resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

  user_data = <<EOL
  #!/bin/bash

  yum install nginx
  systemctl restart nginx
  systemctl enable nginx
  EOL

  tags = {
    Name = "HelloWorld"
  }
}