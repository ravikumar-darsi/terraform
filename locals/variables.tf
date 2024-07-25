variable "instance_names" {
  type    = list(any)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "dispatch", "web"]
}

variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  default = "Z06421641LWYSS1T924TY"
}

variable "domain_name" {
  default = "sub.daws67s.online"
}