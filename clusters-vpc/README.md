# Provision the Cluster Network
- First execute the steps at https://github.com/NickBaynham/sre-terraform/tree/main/shared_state
```
export AWS_ACCESS_KEY_ID="<your access key>"
export AWS_SECRET_ACCESS_KEY="<your secret key>"
export AWS_REGION="us-east-1"

cd root@sre-1:~/sre-terraform/clusters-vpc
terraform init
terraform validate
terraform plan
terraform apply
```
