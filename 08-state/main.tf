terraform {
  backend "s3" {
    bucket = "terraform-state-b74"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "hello world"
}

output "test" {
  value = var.test
}