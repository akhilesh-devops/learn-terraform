variable "components" {
  default = ["frontend", "mongodb", "catalogue"]
}

resource "aws_instance" "instance" {
  count = length(var.components)
  ami = "ami-0b4f379183e5706b9"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]
  instance_type = "t2.micro"

  tags = {
    Name = element(var.components, count.index)
  }
}

output "components" {
  value = element(var.components, 15)
}


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
  # value = try(var.laptops["hp"].processor)
  value = lookup(var.laptops["hp"], "processor")
}

output "del_processor" {
  # value = try(var.laptops["del"].processor)
  value = lookup(var.laptops["del"], "processor")
}

output "laptop_message" {
  value      = "hp_processor = ${var.laptops["hp"].processor}, del_processor = ${var.laptops["del"].processor}"
}