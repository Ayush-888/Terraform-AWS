output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "subnet_1_id" {
  value       = module.subnets.subnet_1_id
  description = "ID of apispocc_sb1 subnet"
}

output "subnet_2_id" {
  value       = module.subnets.subnet_2_id
  description = "ID of apispocc_sb2 subnet"
}

output "internet_gateway_id" {
  value       = module.subnets.internet_gateway_id
  description = "ID of internet gateway"
}

output "route_table_id" {
  value       = module.subnets.route_table_id
  description = "ID of route table"
}

output "security_group_id" {
  value       = module.security-group.security_group_id
  description = "ID of security group"
}

output "eks_cluster_endpoint" {
  value       = module.eks.eks_cluster_endpoint
  description = "Endpoint of EKS cluster"
}

output "instance_id" {
  value       = module.ec2.instance_id
  description = "Public IP of ec2 server"
}

output "alb_name" {
  value       = module.alb.loadbalancerdns
  description = "DNS of load balancer"
}
