output "subnet_1_id" {
  value = aws_subnet.apispocc_sb1.id
  description = "ID of apispocc_sb1 subnet"
}

output "subnet_2_id" {
  value = aws_subnet.apispocc_sb2.id
  description = "ID of apispocc_sb2 subnet"
}

output "internet_gateway_id" {
  value = aws_internet_gateway.apispocc_igw.id
  description = "ID of interent gateway"
}

output "route_table_id" {
  value = aws_route_table.apispocc_rt.id
  description = "ID of route table"
}