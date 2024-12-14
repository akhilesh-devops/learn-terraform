## Plain variable

variable "fruit_name" {
  default = "apple"
}

# output "fruit_name" {
#   value = var.fruit_name
# }

## List variable

variable "fruits" {
  default = ["apple", "grapes", "orange", "banana"]
}

# output "fruit_1" {
#   value = element(var.fruits, 0)
# }
#
# output "fruit_2" {
#   value = element(var.fruits, 1)
# }
#
# output "fruit_3" {
#   value = element(var.fruits, 2)
# }
#
# output "fruit_4" {
#   # value = element(var.fruits, 3)
#   value = var.fruits[3]
# }

## Map variable

variable "fruit_stock" {
  default = {
    apple  = 100
    orange = 200
    banana = 300
    grapes = 400
  }
}

# output "apple_stock" {
#   value = var.fruit_stock["apple"]
# }
#
# output "orange_stock" {
#   value = var.fruit_stock["orange"]
# }
#
# output "banana_stock" {
#   value = var.fruit_stock["banana"]
# }
#
# output "grapes_stock" {
#   value = var.fruit_stock["grapes"]
# }

##Map of Map variable

variable "fruit_details" {
  default = {
    apple = {
      price = 20
      stock = 50
    }
    orange = {
      price = 10
      stock = 100
    }
    banana = {
      price = 50
      stock = 150
    }
    grapes = {
      price = 60
      stock = 100
    }
  }
}

# output "apple_price" {
#   value = var.fruit_details["apple"].price
# }
#
# output "orange_price" {
#   value = var.fruit_details["orange"].price
# }
#
# output "banana_price" {
#   value = var.fruit_details["banana"].price
# }
#
# output "grapes_price" {
#   value = var.fruit_details["grapes"].price
# }

## Access variable in combination of string with ${}

variable "fruit_invoice" {
  default = {
    apple = {
      price = 100
      stock = 50
      sale  = true
    }
    banana = {
      price = 60
      stock = 30
      sale  = false
    }
    orange = {
      price = 40
      stock = 20
      sale  = true
    }
    grapes = {
      price = 90
      stock = 80
      sale  = false
    }
  }
}

# output "fruit_1_invoice" {
#   value = "Fruit Price - ${var.fruit_invoice["apple"].price}, Fruit stock - ${var.fruit_invoice["apple"].stock}, Fruit sale - ${var.fruit_invoice["apple"].sale}"
# }

output "fruit_name_1" {
  value = lookup(var.fruit_invoice, "each.key", null)
}