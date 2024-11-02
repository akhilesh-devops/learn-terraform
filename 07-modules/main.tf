module "test" {
  source = "./local-module"
  name   = var.name
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
}



variable "name" {
  default = "frontend"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}