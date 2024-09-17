output "instance_id" {
  value = aws_instance.apispocc_server.id
  description = "Public IP of the Jenkins EC2 instance"
}