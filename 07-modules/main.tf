module "components" {
  source = "./local-module"

  for_each                = var.components
  instance_type           = lookup(each.value, "instance_type", null)
  vpc_security_group_ids  = var.vpc_security_group_ids
  name                    = lookup(each.value, "name", null)
}




variable "vpc_security_group_ids" {}

variable "components" {}


