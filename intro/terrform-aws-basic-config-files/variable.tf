# variable.tf
variable "instance_type" {
  description = "The type of instance to create."
  type        = string
  default     = "t2.micro"
}


variable "region" {
  description = "The region to deploy resources into"
  type        = string
  default     = "us-east-1"
}




