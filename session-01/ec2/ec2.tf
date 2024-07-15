resource "aws_instance" "name" {
  ami                    = "ami-0b4f379183e5706b9" #devops-practice
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
  name        = "roboshop-all-aws"             # this is for AWS
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description = "Allow All ports"
    from_port   = 0 # 0 means all ports
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}