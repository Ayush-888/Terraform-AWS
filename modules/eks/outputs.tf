output "eks_cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "Endpoint for the EKS cluster"
}