variable "cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "app_subnets" {
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "db_subnets" {
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

resource "aws_subnet" "public_subnets" {
  count      = length(var.public_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets, count.index)

  tags = {
    Name = "public-${count.index+1}"
  }
}
