module "eks" {
  source            = "../eks-cp"
  version           = "17.24.0"
  cluster_name      = "var.cluster_full_name
  subnets           = var.private_subnets
  vpc_id            = var.vpc_id
    
  private_subnets   = var.private_subnets
  public_subnets    = var.public_subnets
  cluster_full_name = var.cluster_full_name
  cluster_version   = var.cluster_version
  common_tags       = var.common_tags
}
