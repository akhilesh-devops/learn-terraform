## Simple variable

variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}


## List variable

variable "fruits" {
  default = ["apple", "orange"]
}

output "fruit_name-1" {
  value = var.fruits[0]
}

output "fruit_name-2" {
  value = var.fruits[1]
}

#
#
# ## Map variable
#
# variable "fruit_stock" {
#   default = {
#     apple  = 100
#     banana = 200
#   }
# }
#
# output "apple_stock" {
#   value = var.fruit_stock["apple"]
# }
#
# output "banana_stock" {
#   value = var.fruit_stock["banana"]
# }
#
#
#
# ## Dictionary variable
#
# variable "fruit_message" {
#   default = {
#     apple = {
#       quantity = 100
#       price = 20
#       for_sale = true
#     },
#     banana = {
#       quantity = 250
#       price = 5
#       for_sale = false
#     }
#   }
# }
#
# output "apple_price" {
#   value = var.fruit_message["apple"].price
# }
#
# output "banana_price" {
#   value = var.fruit_message["banana"].price
# }
#
#
# ## variable Datatypes
#
# variable "data_types" {
#   default = {
#     fruit_name = "apple"
#     quantity   = 100
#     for_sale   = true
#   }
# }
#
# output "fruit_message" {
#   value = "Fruit Name - ${var.data_types["fruit_name"]}, Quantity - ${var.data_types["quantity"]}"
# }
#
# output "fruit_details_banana" {
#   value = "Fruit Quantity = ${var.fruit_message["banana"].quantity}, Fruit Price = ${var.fruit_message["banana"].price}, Fruit status = ${var.fruit_message["banana"].for_sale}"
# }
