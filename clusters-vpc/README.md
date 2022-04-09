# Provision the Cluster Network
- First execute the steps at https://github.com/NickBaynham/sre-terraform/tree/main/shared_state
- Note: Your keys should not be tenancy root, but restricted to what is needed for managing clusters
```
export AWS_ACCESS_KEY_ID="<your access key>"
export AWS_SECRET_ACCESS_KEY="<your secret key>"
export AWS_REGION="us-east-1"

cd ~/sre-terraform/clusters-vpc
terraform init
terraform validate
terraform plan
terraform apply
```

## Removing Resources
```
terraform destroy
terraform init
```
