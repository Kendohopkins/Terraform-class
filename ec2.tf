resource "aws_instance" "Scorpion-1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "my-irish-key" 
  subnet_id     = var.private_subnet_cidr_block_1

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
  EOF

  tags = {
    Name = "Scorpion-1"
  }
}


