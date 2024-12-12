
## plain variable

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

output "first_fruit" {
  value = var.fruits[0]
}

output "first_fruit" {
  value = element(var.fruits, 0)
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


## Map of Map variable

variable "fruit_stock_with_price" {
  default = {
    apple = {
      price = 20
      stock = 100
    }
    banana = {
      price = 10
      stock = 20
    }
  }
}

output "apple_details" {
  value = "apple price - ${var.fruit_stock_with_price["apple"].price}, apple stock - ${var.fruit_stock_with_price["apple"].stock}"
}
