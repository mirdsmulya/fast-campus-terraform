# resource.tf
resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami           = "ami-0c55b159cbfafe1f0"
}



resource "aws_instance" "my_instance" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}





