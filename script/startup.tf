resource "aws_instance" "WebServer" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]


  provisioner "local-exec" {
    command = <<EOF
sudo su -
yum install nginx -y
systemctl enable nginx
systemctl restart nginx
EOF
  }

  tags = {
    Name = "test"
  }
}