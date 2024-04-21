provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  skip_final_snapshot  = true


  username = var.db_username
  password = var.db_password
}












