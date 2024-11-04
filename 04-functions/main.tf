# variable "fruits" {
#   default = ["apple", "orange", "banana"]
# }
#
# resource "aws_instance" "instance" {
#   count = length(var.fruits)
#   ami = "ami-0b4f379183e5706b9"
#   vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
#   instance_type = "t2.micro"
#
#   tags = {
#     Name = element(var.fruits, count.index)
#   }
# }


variable "laptops" {
  default = {
    hp = {
      processor = "amd-ryzen"
      memory    = "10G"
      cpu       = 2
    }
    del = {
      processor = "intel"
      memory    = "5G"
      cpu       = 5
    }
  }
}

output "hp_processor" {
  value = try(var.laptops["hp"].processor)
}

output "del_processor" {
  value = try(var.laptops["del"].processor)
}