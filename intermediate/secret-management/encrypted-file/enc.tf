provider "aws" {
  region = "ap-southeast-1" 
}

data "aws_kms_secrets" "example" {
  secret {
    name    = "password"
    payload = "AQICAHhfGw/HA94GYLD7LcesPVc5OsUFWoOkWGqUIabmjObCTgFwjZy959DhqID+XvawqQEoAAAAbTBrBgkqhkiG9w0BBwagXjBcAgEAMFcGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMT5Tos6S6kQTzVLnNAgEQgCqbIT+nOy8KKF9W3oOeyAjIoFBTqQfL8/P4fxskFAASzbvcJzltWO2M4XM="
  }
}


resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  skip_final_snapshot  = true

  username = "usernameku"
  password = data.aws_kms_secrets.example.plaintext["password"]
}





