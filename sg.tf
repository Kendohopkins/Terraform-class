
resource "aws_security_group" "private_sg" {
  name        = "private-security-group"
  description = "Security group for private EC2 instances"

  // Inbound rule: Allow traffic from instances in the same security group
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["172.31.0.0/17"]
  }

  // Outbound rule: Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}