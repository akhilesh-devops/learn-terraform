instance_type = "t2.micro"
vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
components = {
  frontend = { name = "frontend"}
  mongodb  = { name = "mongodb"}
}