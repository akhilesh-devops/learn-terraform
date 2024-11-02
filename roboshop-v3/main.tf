module "components" {

  for_each = var.components

  source          = "./module"
  zone_id         = var.zone_id
  vpc_security_group_ids = var.vpc_security_group_ids
  name            = lookup(each.value, "name")
  instance_type   = lookup(each.value, "instance_type")
}


vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

