module "components" {
  source = "./local-module"

  for_each                = var.components
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids
  name                    = lookup(each.value, "name", null)
}



variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

variable "components" {
  default = {
    frontend = { name = "frontend"}
    mongodb  = { name = "mongodb"}
  }
}

