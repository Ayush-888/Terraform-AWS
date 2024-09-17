variable "instance_type" {
  default = "This is the instance type of the server"
  type = string
}

variable "ami_type_ec2" {
  default = "This is the ami type"
  type =string
}

variable "security_group_id" {
  default = "This is the security group ID"
  type = string
}

variable "subnet_id" {
  default = "This is the subnet ID"
  type = string
}

variable "web_server" {
  default = "This is the server name"
  type = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}