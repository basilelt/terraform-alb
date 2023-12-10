resource "aws_subnet" "pir_public_subnet1" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.1.0/24"
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-central-1a"

  tags = {
    Name = "pir_public_subnet1_10.1.1"
  }
}

resource "aws_subnet" "pir_public_subnet2" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.2.0/24"
  map_public_ip_on_launch = true # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-central-1b"

  tags = {
    Name = "pir_public_subnet2_10.1.2"
  }
}

resource "aws_subnet" "pir_priv_subnet1" {
  vpc_id                  = aws_vpc.main.id # nom_du_vpc.id = vpc-08d8bc9569f6f0e83
  cidr_block              = "10.1.100.0/24"
  map_public_ip_on_launch = false # Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  availability_zone       = "eu-central-1a"

  tags = {
    Name = "pir_priv_subnet1_10.1.100"
  }
}