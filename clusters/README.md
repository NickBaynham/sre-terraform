# Provision an EKS Cluster
Reference: https://github.com/PacktPublishing/Kubernetes-in-Production-Best-Practices/tree/master/Chapter03/terraform/packtclusters

## Environment Variables
Provision the Cluster VPC and enter the following outputs from eks-vpc into terraform.tfvars:
- VPC Id
- Private Subnet Ids
- Public Subnet Ids

Note: you might also create data resources to obtain these values with Terraform

```
cd ~/sre-terraform/clusters
terraform init
terraform workspace new prod1
terraform plan
terraform apply
```
