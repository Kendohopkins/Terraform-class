# Define the VPC resource using the variables
resource "aws_vpc" "baraka_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "private_subnet_cidr_block_3" {
  vpc_id                  = aws_vpc.baraka_vpc.id
  cidr_block              = var.private_subnet_cidr_block_3
  availability_zone       = "eu-west-1c"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_subnet_cidr_block_4" {
  vpc_id                  = aws_vpc.baraka_vpc.id
  cidr_block              = var.private_subnet_cidr_block_4
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = false
}

# Define two public subnets #
resource "aws_subnet" "public_subnet_cidr_block_2" {
  vpc_id            = aws_vpc.baraka_vpc.id
  cidr_block        = var.public_subnet_cidr_block_2
  availability_zone = "eu-west-1b"
}

