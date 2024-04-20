resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Security group for example usage"
  vpc_id      = "vpc-12345678"  # Sesuaikan dengan VPC ID Anda

  dynamic "ingress" {
    for_each = var.inbound_rules
    content {
      description = ingress.value.description
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  tags = {
    Name = "ExampleSecurityGroup"
  }
}
