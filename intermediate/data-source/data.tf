data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["*ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["staging"]
  }

  # Asumsikan subnet berada dalam VPC yang sudah ditentukan
  vpc_id = "vpc-00feacb6d220c5212"
}