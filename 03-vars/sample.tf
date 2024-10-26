## Simple variable

variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}



## List variable

variable "fruit_list" {
  default = ["apple", "banana"]
}

output "first_fruit" {
  value = var.fruit_list[0]
}

output "second_fruit" {
  value = var.fruit_list[1]
}



## Map variable

variable "fruit_stock" {
  default = {
    apple  = 100
    banana = 200
  }
}

output "apple_stock" {
  value = var.fruit_stock["apple"]
}

output "banana_stock" {
  value = var.fruit_stock["banana"]
}



## Dictionary variable

variable "fruit_message" {
  default = {
    apple = {
      quantity = 100
      price = 20
    },
    banana = {
      quantity = 250
      price = 5
    }
  }
}

output "apple_price" {
  value = var.fruit_message["apple"].price
}
