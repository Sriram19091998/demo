# Creation of Classic LB

resource "aws_elb" "balancer" {
  name               = "balancer"
  security_groups    = [aws_security_group.ram.id]
  availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

# Attchment to 1 st instance

resource "aws_elb_attachment" "attach" {
  elb      = aws_elb.balancer.id
  instance = aws_instance.instance1.id
}

# Attchment to 2nd instance 

resource "aws_elb_attachment" "attach2" {
  elb      = aws_elb.balancer.id
  instance = aws_instance.instance2.id
}

# Attchment to 2nd instance 

resource "aws_elb_attachment" "attach3" {
  elb      = aws_elb.balancer.id
  instance = aws_instance.instance3.id
}

output "dns_id" {

  value = aws_elb.balancer.dns_name  
}

