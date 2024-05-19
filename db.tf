# Define the RDS instances
resource "aws_db_instance" "db-instance-1" {
  identifier             = "db-instance-1"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.35"
  username               = "baraka1"
  password               = "Juggernaut9290"
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  publicly_accessible    = false
  skip_final_snapshot    = true
}

resource "aws_db_instance" "db-instance-2" {
  identifier             = "db-instance-2"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.35"
  username               = "baraka2"
  password               = "Juggernaut9290"
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  publicly_accessible    = false
  skip_final_snapshot    = true
}



# Define a DB subnet group for the RDS instances
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_cidr_block_3.id, aws_subnet.private_subnet_cidr_block_4.id]
}
