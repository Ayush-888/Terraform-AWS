variable "vpc_id" {
  default = "This is the VPC ID"
  type = string
}

variable "cidr_sb1" {
  default = "This is the subnet-1 cidr range"
  type = string
}

variable "zone_sb1" {
  default = "This is the zone of subnet-1"
  type = string
}

variable "subnet_1" {
  default = "This is the name of the subnet-1"
  type = string
}

variable "cidr_sb2" {
  default = "This is the subnet-1 cidr range"
  type = string
}

variable "zone_sb2" {
  default = "This is the zone of subnet-2"
  type = string
}

variable "subnet_2" {
  default = "This is the name of the subnet-2"
  type = string
}

variable "igw" {
  default = "This is the name of internet gateway"
  type = string
}

variable "route_table" {
  default = "This is the name of route table"
  type = string
}