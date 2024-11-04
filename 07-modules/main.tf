module "components" {
  source = "./local-module"

  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids
}



variable "instance_type" {}
variable "vpc_security_group_ids" {}




instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
