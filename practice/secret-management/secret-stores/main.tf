provider "aws" {
  region = "ap-southeast-1" 
}

data "aws_secretsmanager_secret_version" "creds" {
  secret_id = "database-mysql-instance-1-creds"
}

locals {
  db_creds = jsondecode(
    data.aws_secretsmanager_secret_version.creds.secret_string
  )
}


resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  skip_final_snapshot  = true

  username = local.db_creds.username_db
  password = local.db_creds.password
}







