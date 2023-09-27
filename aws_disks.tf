# EBS volume / HDD 
resource "aws_ebs_volume" "new-vol" {
  availability_zone = "us-east-1a"
  size              = 3
  tags = {
    Name = "tf-ens-vol"
  }
}