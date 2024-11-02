module "components" {
  for_each                = var.components
  source                  = "./module"

  vpc_security_group_ids  = var.vpc_security_group_ids
  zone_id                 = var.zone_id
  instance_type           = each.value["instance_type"]
  name                    = each.value["name"]

}

vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
zone_id                = "Z0345275C3S6UDSOR4CU"

components = {
  default = {
    frontend   = { name = "frontend", instance_type = "t2.micro" }
    mongodb    = { name = "mongodb", instance_type = "t2.micro" }
    catalogue  = { name = "catalogue", instance_type = "t2.micro" }
    redis      = { name = "redis", instance_type = "t2.micro" }
    user       = { name = "user", instance_type = "t2.micro" }
    cart       = { name = "cart", instance_type = "t2.micro" }
    mysql      = { name = "mysql", instance_type = "t2.micro" }
    shipping   = { name = "shipping", instance_type = "t2.micro" }
    rabbitmq   = { name = "rabbitmq", instance_type = "t2.micro" }
    payment    = { name = "payment", instance_type = "t2.micro" }
  }
}


