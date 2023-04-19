/*resource "aws_lb" "web" {
  name               = "web"
  load_balancer_type = "application"
  vpc_security_group_ids = [aws_security_group.ram.id]

  
}


resource "aws_lb_listener" "listner" {
  load_balancer_arn = aws_lb.example.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.listner.arn
  }
}

resource "aws_lb_target_group_attachment" "atch" {
  target_group_arn = aws_lb_target_group.listner.arn
  target_id        = aws_instance.instance.id
}


/*resource "aws_eip_association" "association" {
  allocation_id = aws_eip.eip.id
  public_ip = aws_lb.web.id

}


 resource "aws_elb_attachment" "lb_ass" {
  elb      = aws_lb.web.id
  instance = aws_eip.eip.id

} 
output "aws_elb" {
  value = aws_lb.web.id
} */
