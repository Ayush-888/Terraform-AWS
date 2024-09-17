variable "alb_name" {
  default = "This is the alb name"
  type = string
}

variable "security_group_id" {
  default = "This is the security group ID"
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "tg_name" {
  default = "This is the target group name"
  type = string
}

variable "vpc_id" {
  default = "This is the VPC ID"
  type = string
}

variable "instance_id" {
  default = "This is the server ID"
  type = string
}
