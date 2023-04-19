# To Create 2nd Instance in different region

resource "aws_instance" "instance2" {
  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "LINUXVM"
  vpc_security_group_ids = [aws_security_group.ram.id]
  availability_zone      = "ap-south-1a"

  # Installing Apache2 by using user-data concept  
  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              systemctl enable apache2
              echo "<h1> Welcome to Terraform session </h1>" > /var/www/html/index.html
              EOF
}
