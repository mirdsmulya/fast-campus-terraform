# local.tf
locals {
  instance_count = 3
  ami_id         = "ami-0c55b159cbfafe1f0"
  instance_type  = "t2.micro"
}

# resource.tf
resource "aws_instance" "example" {
  count         = local.instance_count
  ami           = local.ami_id
  instance_type = local.instance_type
}






