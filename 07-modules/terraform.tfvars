instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
components = {
  frontend = { name = "frontend", instance_type = "t2.micro" }
  mongodb  = { name = "mongodb", instance_type = "t2.micro" }
  catalogue = { name = "catalogue", instance_type = "t2.micro" }
}