provider "aws" {
  region = "ap-southeast-1" # Anda bisa mengganti ini dengan region yang diinginkan
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["*ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
  tags_all = {
    Name = "HelloWorld"
  }
}

output "ami_id" {
  value = data.aws_ami.ubuntu.id
}



