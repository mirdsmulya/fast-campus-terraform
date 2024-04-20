variable "env" {
  description = "Deployment environment (prod or dev)"
  type        = string
  default     = "staging"
}

variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
  default     = 1
}

resource "aws_instance" "example" {
  ami           = "ami-015f72d56355ebc27"
  instance_type = var.env == "prod" ? "t2.large" : "t2.micro"
  count         = var.env == "prod" ? 2 : var.instance_count

  tags = {
    Name = "Example-${var.env}"
  }
}


