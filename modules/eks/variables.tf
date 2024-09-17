variable "cluster_name" {
  default = "This is the cluster name"
  type = string
}

variable "cluster_version" {
  default = "This is the cluster version"
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  default = "This is the VPC Id"
  type = string
}

variable "ami_types" {
  default = "This is the ami type of the machine"
  type = string
}

variable "instance_types" {
  default = "This is the instance type of the machine"
  type = string
}

variable "security_group_id" {
  default = "This is the security group Id"
  type = string
}
