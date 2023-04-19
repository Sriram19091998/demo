# Creating Security Group 
resource "aws_security_group" "ram" {

  name        = "ram"
  description = "for ingrss vault"

  # Creating multiple no of ports by using dynamic process  

  dynamic "ingress" {

    for_each = var.sg_port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
  dynamic "egress" {

    for_each = var.sg_port
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
}

# To know out put of security group ID

output "security_groups" {

  value = aws_security_group.ram.id


}


