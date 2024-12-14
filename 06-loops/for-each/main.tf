variable "components" {
  default = {
    payment = {
      name          = "payment-dev"
      instance_type = "t2.micro"
    }
    frontend = {
      name          = "frontend-dev"
      instance_type = "t2.micro"
    }
    mongodb = {
      name          = "mongodb-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t2.micro"
    }
  }
}

