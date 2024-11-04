module "components" {
  source = "./local-module"
  for_each                = var.components
  instance_type           = var.instance_type
  ami                     = var.ami
  vpc_security_group_ids  = var.vpc_security_group_ids
  name                    = each.key
}



variable "instance_type" {}
variable "ami" {}
variable "vpc_security_group_ids" {}
variable "components" {}



instance_type = "t2.micro"
ami           = "ami-0b4f379183e5706b9"
vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

components = {
  frontend = {}
  mongodb  = {}
  catalogue = {}
}