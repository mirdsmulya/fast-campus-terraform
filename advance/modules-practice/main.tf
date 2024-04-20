resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  
  tags = {
    Name = "Instance-${var.environment}-${count.index}"
  }
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "ami" {
  description = "The AMI to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
}

variable "environment" {
  description = "The environment name"
  type        = string
}



