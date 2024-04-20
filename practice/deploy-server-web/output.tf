# output.tf
output "public_ips" {
  description = "The public IP addresses of the web servers"
  value       = aws_instance.web_server[*].public_ip
}

output "hostnames" {
  description = "The public DNS names of the web servers"
  value       = aws_instance.web_server[*].public_dns
}