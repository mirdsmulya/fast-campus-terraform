#locals.tf
locals {
  ami_id = "ami-015f72d56355ebc27"
  instance_count = 1
  common_tags = {
    Project = "Terraform Web Server"
  }
}