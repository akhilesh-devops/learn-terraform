variable "fruits" {
  default = ["apple", "orange", "banana"]
}

resource "aws_instance" "instance" {
  count = length(var.fruits)
  ami = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type = "t2.micro"

  tags = {
    Name = element(var.fruits, count.index)
  }
}


# variable "fruit_details" {
#   default = {
#     apple = {
#       # price = 100
#       stock = 10
#     }
#     banana = {
#       price = 20
#       # stock = 5
#     }
#   }
# }
#
# output "orange_price" {
#   value = try(var.fruit_details["orange"].price, "null")
# }
#
# output "apple_price" {
#   # value = try(var.fruit_details["apple"].price, "null")
#   value = lookup(var.fruit_details["apple"], "price", "null")
# }
