output "loadbalancerdns" {
  value       = aws_lb.apispocc_alb.dns_name
  description = "DNS Name of the Load Balancer"
}