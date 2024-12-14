variable "components" {
  default = ["frontend", "catalogue", "mongodb", "user"]
}

# resource "aws_instance" "instance" {
#   count                   = length(var.components)
#   instance_type           = "t2.micro"
#   ami                     = "ami-0b4f379183e5706b9"
#   vpc_security_group_ids  = ["sg-0ad8ec6873fafd140"]
#
#   tags = {
#     Name = element(var.components, count.index)
#   }
# }

variable "fruits" {
  default = {
    apple = {
      stock = 100
      price = 50
      sale  = true
    }
    orange = {
      stock = 200
      price = 100
      sale  = true
    }
    grapes = {
      stock = 300
      price = 200
      sale  = false
    }
    banana = {
      stock = 400
      price = 300
      sale = true
    }
  }
}

output "apple_stock" {
  value = try(var.fruits["apple"].stock)
}






# output "hp_processor" {
#   # value = try(var.laptops["hp"].processor)
#   value = lookup(var.laptops["hp"], "processor")
# }
#
# output "del_processor" {
#   # value = try(var.laptops["del"].processor)
#   value = lookup(var.laptops["del"], "processor")
# }
#
# output "laptop_message" {
#   value      = "hp_processor = ${var.laptops["hp"].processor}, del_processor = ${var.laptops["del"].processor}"
# }