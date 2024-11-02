terraform {
  backend "s3" {
    bucket = "terraform-state-b74"
    key    = "tfvars/state.tfstate"
    region = "us-east-1"
  }
}