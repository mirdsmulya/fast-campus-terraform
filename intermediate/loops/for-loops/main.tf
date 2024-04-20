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
