/* # To crate Instance in AWS

resource "aws_instance" "instance" {
  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "LINUXVM"
  vpc_security_group_ids = [aws_security_group.ram.id]
  availability_zone      = "ap-south-1b"

 /* # To estblish connection by pem file to enter into VM

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./LINUXVM.pem")
    host        = self.public_ip
  }

  # Installing Apache2 s/w by using Remote-exec Provision

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y apache2",
     "sudo systemctl start apache2"
      //"echo "<h1> Welcome to DEVOPS family </h1>" > /var/www/html/index.html",
      //"sudo syatemctl start appache2"
    ]
  }
} */

