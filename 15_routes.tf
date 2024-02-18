resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private"
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}


# Faire l'association entre la route_table et le subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public.id
}

# Faire l'association entre la route_table et le subnet
resource "aws_route_table_association" "public_assoc2" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public.id
}

# Faire l'association entre la route_table et le subnet
resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.priv_subnet_a.id
  route_table_id = aws_route_table.private.id
}