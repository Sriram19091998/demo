/*resource "aws_lb" "unique" {
  name               = "unique"
  //internal           = false
 // load_balancer_type = "classic"
  security_groups    = [aws_security_group.ram.id]

  subnet_mapping {
    subnet_id     = "subnet-04a69c5f881cd9295"
    //allocation_id = aws_eip.eip.id
  }

  tags = {

    Name = "unique-lb"
  }
}
resource "aws_lb_target_group" "port" {
  name     = "port-target-group"
  port     = 80
  protocol = "http"
}

resource "aws_lb_listener" "list" {
  load_balancer_arn = aws_lb.unique.arn
  port              = "80"
  protocol          = "http"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.port.arn
  }
}
resource "aws_elb_attachment" "my_attachment" {
  elb_id       = aws_elb.unique.id
  instance_id  = aws_instance.instance.id
  attachment_type = "instance"
}


output "load_balncer" {

  value = aws_lb.unique.id

} */
