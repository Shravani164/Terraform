#aws ec2 instance 
resource "aws_instance" "ecomm-web" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.ecomm-pub-sn.id
  vpc_security_group_ids = [aws_security_group.ecomm-pub-sg.id]
  key_name = "aws-key"
  user_data = file("ecomm.sh")
  tags = {
    Name = "ecomm-server"
  }
}