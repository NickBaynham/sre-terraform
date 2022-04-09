# Provision an EKS Cluster
Reference: https://github.com/PacktPublishing/Kubernetes-in-Production-Best-Practices/tree/master/Chapter03/terraform/packtclusters

## Environment Variables
Provision the Cluster VPC and enter the following outputs from clusters-vpc into terraform.tfvars:
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

## Configure kubeconfig from provisioned cluster:
```
region=$(terraform output aws_region)
region=$(sed -e 's/^"//' -e 's/"$//' <<<"$region")
name=$(terraform output cluster_full_name)
name=$(sed -e 's/^"//' -e 's/"$//' <<<"$name")
aws eks --region $region update-kubeconfig --name $(terraform output cluster_full_name)
terraform output authconfig | kubectl -n kube-system create -f -
kubectl get ns
```
