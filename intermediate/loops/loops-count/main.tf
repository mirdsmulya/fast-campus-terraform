provider "aws" {
  region = "ap-southeast-1"
}

variable "instance_count" {
  type    = number
  default = 3
}

resource "aws_instance" "app" {
  count         = var.instance_count
  ami           = "ami-015f72d56355ebc27"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}

# https://github.com/mirdsmulya/terraform-fast-campus/tree/master/intermediate/loops 



