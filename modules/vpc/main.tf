resource "aws_vpc" "apispocc_vpc" {
  cidr_block = var.cidr

  tags = {
    Name = var.vpc_name
  }
}