data "aws_ami" "server_ami_arm" {
  most_recent = true
  owners      = ["amazon"] 

  filter {
    name   = "name"
    values = ["al2023-ami-*-arm64"]
  }
  
  filter {
    name   = "architecture"
    values = ["arm64"]
  }
  
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  
  filter {
    name   = "state"
    values = ["available"]
  }
}