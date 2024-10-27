variable "fruits" {
  default = ["apple", "orange", "banana"]
}

output "fruits" {
  # value = var.fruits[4]
  value = element(var.fruits, 10)
}

variable "fruit_details" {
  default = {
    apple = {
      price = 100
      stock = 10
    }
    banana = {
      price = 20
      # stock = 5
    }
  }
}

output "orange_price" {
  value = try(var.fruit_details["orange"].price, "null")
}

output "banana_stock" {
  value = try(var.fruit_details["banana"].stock, "out of stock")
}
