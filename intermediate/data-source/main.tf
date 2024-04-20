provider "aws" {
  region = "ap-southeast-1" # Anda bisa mengganti ini dengan region yang diinginkan
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = data.aws_subnet.selected.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
  tags_all = {
    Name = "HelloWorld"
  }
}





