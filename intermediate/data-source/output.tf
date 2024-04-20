output "ami_id" {
  value = data.aws_ami.ubuntu.id
}

output "selected_subnet_id" {
  value = data.aws_subnet.selected.id
}