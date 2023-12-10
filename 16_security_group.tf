# Firewall
resource "aws_security_group" "pir_sg" {
  name        = "pir_sg" # Il n'y a pas besoin de tag car le SG à un name attribut
  description = "PIR security group"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # pour autoriser tout
    cidr_blocks = ["0.0.0.0/0"] # IP d'entrée, on peut en plusieur ["0.0.0.1/32", "0.0.0.2/32"]
    #   ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #   ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "pir_sg"
  }
}

resource "aws_security_group" "elb_sg" {
  name        = "elb_sg" # Il n'y a pas besoin de tag car le SG à un name attribut
  description = "ELB security group"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"          # pour autoriser tout
    cidr_blocks = ["0.0.0.0/0"] # IP d'entrée, on peut en plusieur ["0.0.0.1/32", "0.0.0.2/32"]
    #   ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  ingress {
    description = "SSH from VPC"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"          # pour autoriser tout
    cidr_blocks = ["0.0.0.0/0"] # IP d'entrée, on peut en plusieur ["0.0.0.1/32", "0.0.0.2/32"]
    #   ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #   ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "elb_sg"
    user = "pir"
  }
}