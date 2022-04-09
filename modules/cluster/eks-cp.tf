module "eks" {
  cluster_name      = var.cluster_full_name
  cluster_version   = "1.22"
  subnets           = var.private_subnets
  vpc_id            = var.vpc_id
    
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  cluster_full_name = var.cluster_full_name
  common_tags       = var.common_tags
}

data "aws_eks_cluster" cluster {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
