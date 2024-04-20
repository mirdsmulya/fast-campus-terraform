variable "instance_count" {
  type    = number
  default = 3
}

resource "aws_instance" "app" {
  count         = var.instance_count
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}

variable "usernames" {
  type    = list(string)
  default = ["alice", "bob", "charlie"]
}

locals {
  user_tags = { for user in var.usernames : user => "${user}@example.com" }
}

output "user_tags" {
  value = local.user_tags
}



