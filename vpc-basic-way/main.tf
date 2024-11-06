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

  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "public_subnets" {
  count      = length(var.public_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets, count.index)

  tags = {
    Name = "public-${count.index+1}"
  }
}

resource "aws_subnet" "app_subnets" {
  count      = length(var.app_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.app_subnets, count.index)

  tags = {
    Name = "app-${count.index+1}"
  }
}

resource "aws_subnet" "db_subnets" {
  count      = length(var.db_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.db_subnets, count.index)

  tags = {
    Name = "db-${count.index+1}"
  }
}

resource "aws_route_table" "public_route_tables" {
  count      = length(var.public_subnets)
  vpc_id     = aws_vpc.main.id

  tags = {
    Name = "public-rt-${count.index+1}"
  }
}

resource "aws_route_table" "app_route_table" {
  count      = length(var.app_subnets)
  vpc_id     = aws_vpc.main.id

  tags = {
    Name = "app-rt-${count.index+1}"
  }
}

resource "aws_route_table" "db_route_table" {
  count      = length(var.db_subnets)
  vpc_id     = aws_vpc.main.id

  tags = {
    Name = "db-rt-${count.index+1}"
  }
}

# resource "aws_route_table_association" "public" {
#   subnet_id      = aws_subnet.public_subnets.id[count.index]
#   route_table_id = aws_route_table.public_route_tables.id
# }
#
# resource "aws_route_table_association" "app" {
#   count      = length(var.app_subnets)
#   subnet_id      = aws_subnet.app_subnets.id
#   route_table_id = aws_route_table.app_route_table.id
# }
#
# resource "aws_route_table_association" "db" {
#   count      = length(var.db_subnets)
#   subnet_id      = aws_subnet.db_subnets.id
#   route_table_id = aws_route_table.db_route_table.id
# }