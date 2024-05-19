resource "aws_internet_gateway" "Fast-IGW" {
  vpc_id = aws_vpc.baraka_vpc.id

  tags = {
    Name = "Fast-IGW"
  }
}