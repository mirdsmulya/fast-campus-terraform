#variable.tf
variable "instance_type" {
  description = "The instance type of the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "The region to deploy resources into"
  type        = string
  default     = "ap-southeast-1"
}


