resource "aws_instance" "WebServer" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]


  provisioner "remote-exec" {

    inline = [
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
    ]

  }
}