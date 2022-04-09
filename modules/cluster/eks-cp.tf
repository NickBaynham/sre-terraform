module "eks" {
  source            = "../eks-cp"
  cluster_version   = "1.22"
  vpc_id            = var.vpc_id
    
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  cluster_full_name = var.cluster_full_name
  common_tags       = var.common_tags
}
