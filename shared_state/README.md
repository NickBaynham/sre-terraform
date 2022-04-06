# Provisioning the Terraform state
references: 
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs
- https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sourcing-external.html
```
cd /root/sre-terraform/shared_state
terraform init
terraform validate

export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-east-1"

terraform plan
```
