module "components" {
  source                  = "./module"
  for_each                = var.components
  vpc_security_group_ids  = var.vpc_security_group_ids
  zone_id                 = var.zone_id
  instance_type           = each.value["instance_type"]
  name                    = each.value["name"]

}


components = {
  default = {
    frontend   = { name = "frontend", type = "t2.micro" }
    mongodb    = { name = "mongodb", type = "t2.micro" }
    catalogue  = { name = "catalogue", type = "t2.micro" }
    redis      = { name = "redis", type = "t2.micro" }
    user       = { name = "user", type = "t2.micro" }
    cart       = { name = "cart", type = "t2.micro" }
    mysql      = { name = "mysql", type = "t2.micro" }
    shipping   = { name = "shipping", type = "t2.micro" }
    rabbitmq   = { name = "rabbitmq", type = "t2.micro" }
    payment    = { name = "payment", type = "t2.micro" }
  }
}


