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

output "apple_stock" {
  value = var.fruit_stock["apple"]
}

output "orange_stock" {
  value = var.fruit_stock["orange"]
}

output "banana_stock" {
  value = var.fruit_stock["banana"]
}

output "grapes_stock" {
  value = var.fruit_stock["grapes"]
}