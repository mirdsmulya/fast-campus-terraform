variable "env" {
  description = "Deployment environment (prod or dev)"
  type        = string
  default     = "dev"
}

resource "aws_instance" "example" {
  ami           = "ami-015f72d56355ebc27"
  instance_type = var.env == "prod" ? "t2.large" : "t2.micro"

  tags = {
    Name = "Example-${var.env}"
  }
}


