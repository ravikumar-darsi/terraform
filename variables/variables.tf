# 1. Command line terraform plan -var="instance_type=t3.medium"
# 2. -var-file=""
# 3. terraform.tfvars
# 4. Env variables

variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "Hello Terraform"
    Project     = "roboshop"
    Environment = "DEV"
    Component   = "web"
    Terraform   = "true"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}