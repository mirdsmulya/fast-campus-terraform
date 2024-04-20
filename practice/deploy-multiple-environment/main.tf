provider "aws" {
  region = "ap-southeast-1" # Anda bisa mengganti ini dengan region yang diinginkan
}

resource "aws_instance" "example" {
  ami           = "ami-015f72d56355ebc27" # AMI untuk Amazon Linux 2 di ap-southeast-1, ganti sesuai kebutuhan
  instance_type = "t2.micro" # Tipe instance

  tags = {
    Name = "instance-${terraform.workspace}"
  }
}








