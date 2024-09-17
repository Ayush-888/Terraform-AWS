module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.10.0"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = var.subnet_ids

  enable_irsa = true

  tags = {
    cluster = var.cluster_name
  }

  vpc_id = var.vpc_id

  eks_managed_node_group_defaults = {
    ami_type               = var.ami_types
    instance_types         = [var.instance_types]
    vpc_security_group_ids = [var.security_group_id]
  }

  eks_managed_node_groups = {
    node_group = {
      min_size     = 2
      max_size     = 6
      desired_size = 2
    }
  }
}
