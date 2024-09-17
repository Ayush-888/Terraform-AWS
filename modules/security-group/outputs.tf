output "security_group_id" {
  value = aws_security_group.apispocc_sg.id
  description = "ID of the security group"
}