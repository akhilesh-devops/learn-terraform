module "components" {
  for_each                = var.components
  source                  = "./module"

  vpc_security_group_ids  = var.vpc_security_group_ids
  zone_id                 = var.zone_id
  instance_type           = each.value["instance_type"]
  name                    = each.value["name"]

}



