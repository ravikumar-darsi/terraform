resource "aws_instance" "name" {
  ami           = "ami-0b4f379183e5706b9" #devops-practice
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}