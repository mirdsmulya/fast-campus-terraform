terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "my-terraform-state"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}



