variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "cidr_sb1" {
  description = "The CIDR block for the first subnet"
  type        = string
}

variable "zone_sb1" {
  description = "The availability zone for the first subnet"
  type        = string
}

variable "subnet_1" {
  description = "The name of the first subnet"
  type        = string
}

variable "cidr_sb2" {
  description = "The CIDR block for the second subnet"
  type        = string
}

variable "zone_sb2" {
  description = "The availability zone for the second subnet"
  type        = string
}

variable "subnet_2" {
  description = "The name of the second subnet"
  type        = string
}

variable "igw" {
  default = "This is the name of internet gateway"
  type    = string
}

variable "route_table" {
  default = "This is the name of route table"
  type    = string
}

variable "security_grp" {
  description = "The name of the security group"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "ami_types" {
  description = "The AMI type for the EKS cluster"
  type        = string
}

variable "instance_types" {
  description = "The instance type for the EKS cluster"
  type        = string
}

/*
variable "s3_name" {
  description = "This is the name of the s3 bucket"
  type        = string
}
*/

variable "ami_type_ec2" {
  description = "This is the ami type of EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "web_server" {
  description = "The name of the web server"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
}

variable "tg_name" {
  description = "The name of the target group"
  type        = string
}
