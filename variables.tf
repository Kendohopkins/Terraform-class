# Define variable" {s for VPC configuration
variable "vpc_cidr_block" {
  type = string
}

variable "private_subnet_cidr_block_1" {
  description = "CIDR blocks for the private subnets"
  type        = string
}

variable "private_subnet_cidr_block_2" {
  description = "CIDR blocks for the private subnets"
  type        = string
}

variable "private_subnet_cidr_block_3" {
  description = "CIDR blocks for the private subnets"
  type        = string
}

variable "private_subnet_cidr_block_4" {
  description = "CIDR blocks for the private subnets"
  type        = string
}

variable "public_subnet_cidr_block_1" {
  description = "CIDR blocks for the public subnet 1"
  type        = string
}

variable "public_subnet_cidr_block_2" {
  description = "CIDR blocks for the public subnet 2"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
  default     = "ami-0bdcb38dca13a28c3"
}

variable "private_route_table_1" {
  description = "Name of the first private route table"
  type        = string
}

variable "private_route_table_2" {
  description = "Name of the second private route table"
  type        = string
}

variable "public_route_table" {
  description = "Name of the public route table"
  type        = string
}

variable "db_subnet_group_name" {
  description = "Name of the RDS database subnet group"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

