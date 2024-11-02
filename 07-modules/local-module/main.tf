data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}

output "test" {
  value = data.aws_ami.ami.id
}