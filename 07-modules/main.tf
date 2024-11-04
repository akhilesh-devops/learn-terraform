module "components" {
  source = "./local-module"

  for_each                = var.components
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids
  name                    = lookup(each.value, "name", null)
}



variable "instance_type" {}

variable "vpc_security_group_ids" {}

variable "components" {}


