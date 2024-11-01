variable "components" {
  default = {
    frontend = { name = "frontend-dev", machine_type = "t2.micro" }
    mongodb = { name = "mongodb-dev", machine_type = "t2.micro" }
    catalogue = { name = "catalogue-dev", machine_type = "t2.micro" }
    redis = { name = "redis-dev", machine_type = "t2.micro" }
    user = { name = "user-dev", machine_type = "t2.micro" }
    cart = { name = "cart-dev", machine_type = "t2.micro" }
    mysql = { name = "mysql-dev", machine_type = "t2.micro" }
    shipping = { name = "shipping-dev", machine_type = "t2.micro" }
    rabbitmq = { name = "rabbitmq-dev", machine_type = "t2.micro" }
    payment = { name = "payment-dev", machine_type = "t2.micro" }
  }
}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}

variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}