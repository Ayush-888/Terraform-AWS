output "vpc_id" {
  value = aws_vpc.apispocc_vpc.id
  description = "VPC ID"
}