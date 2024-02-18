resource "aws_subnet" "public_subnet_a" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.1.0/24"
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-west-3a"

  tags = {
    Name = var.tag_name
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.2.0/24"
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-west-3b"

  tags = {
    Name = var.tag_name
  }
}

resource "aws_subnet" "priv_subnet_a" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.100.0/24"
  map_public_ip_on_launch = false # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-west-3a"

  tags = {
    Name = var.tag_name
  }
}