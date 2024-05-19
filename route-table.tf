resource "aws_route_table" "private_route_table_1" {
  vpc_id = aws_vpc.baraka_vpc.id

  tags = {
    Name = "Private Route Table 1"
  }
}

resource "aws_route_table" "private_route_table_2" {
  vpc_id = aws_vpc.baraka_vpc.id

  tags = {
    Name = "Private Route Table 2"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.baraka_vpc.id

  tags = {
    Name = "Public Route Table"
  }
}