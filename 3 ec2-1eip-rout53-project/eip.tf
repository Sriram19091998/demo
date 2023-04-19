# To Create EIP 
resource "aws_eip" "eip" {
  vpc = true
}

# To establish connection b/w EIP to EC2 instace by replacing public IP

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.instance1.id
  allocation_id = aws_eip.eip.id

}

# To see output of EIP
output "eip" {
  value = aws_eip.eip.id
}


# To Create EIP

resource "aws_eip" "eip2" {
  vpc = true
}

# To establish connection b/w EIP to 2nd EC2 instace by replacing public IP



resource "aws_eip_association" "eip_assoc2" {
  instance_id   = aws_instance.instance2.id
  allocation_id = aws_eip.eip2.id

}
# To Create EIP

resource "aws_eip" "eip3" {
  vpc = true
}

# To establish connection b/w EIP to 2nd EC2 instace by replacing public IP

resource "aws_eip_association" "eip_assoc3" {
  instance_id   = aws_instance.instance3.id
  allocation_id = aws_eip.eip3.id

}
