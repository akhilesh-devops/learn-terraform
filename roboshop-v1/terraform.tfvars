components = {
  main = {
    frontend = {
      Name = "frontend-dev"
      instance_type = "t2.micro"
    },
    mongodb = {
      Name = "mongodb-dev"
      instance_type = "t2.micro"
    },
    catalogue = {
      Name = "catalogue-dev"
      instance_type = "t2.micro"
    },
    redis = {
      Name = "redis-dev"
      instance_type = "t2.micro"
    },
    user = {
      Name = "user-dev"
      instance_type = "t2.micro"
    },
    cart = {
      Name = "cart-dev"
      instance_type = "t2.micro"
    }
  }
}