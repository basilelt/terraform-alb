resource "aws_eip" "nat" {
 # vpc = true

  tags = {
    Name = var.tag_name
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_subnet_eu-central-1a.id

  tags = {
    Name = var.tag_name
  }

  depends_on = [aws_internet_gateway.igw]
}

