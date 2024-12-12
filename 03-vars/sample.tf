## Simple variable

variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}


## List variable

variable "IT_SPACE" {
  default = ["tcs", "wipro", "cognizant"]
}

output "First_Company" {
  value = var.IT_SPACE[0]
}

output "Second_Company" {
  value = var.IT_SPACE[1]
}

# ## Map variable
#
# variable "fruit_details" {
#   default = {
#     Fruit_name = "apple", Quantity = 100, Price = 20
#   }
# }
#
# output "fruit_details" {
#   value = "Fruit_Name = ${var.fruit_details["Fruit_name"]}, Fruit_Quantity = ${var.fruit_details["Quantity"]}, Fruit_price = ${var.fruit_details["Price"]}"
# }
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
