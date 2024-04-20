provider "aws" {
  region = "us-west-2"
}

module "ec2_staging" {
  source         = "../../modules/ec2_instance"
  instance_count = 1
  ami            = "ami-0c55b159cbfafe1f0"
  instance_type  = "t2.micro"
  environment    = "staging"
}


