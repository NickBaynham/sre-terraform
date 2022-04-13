# Jenkins Deployment with Terraform
Reference: https://github.com/mlabouardy/pipeline-as-code-with-jenkins/tree/master/chapter5
- The code should be enhanced to store the state files in S3
- Create a terraform.tfvars file in this directory with the specific inputs
```
region="us-east-1"
shared_credentials_file="/root/.aws/config"
aws_profile="default"
author="nbaynham"
```

To manage Jenkins:
```
cd /root/sre-terraform/jenkins
terraform init
terraform validate
terraform plan
terraform apply
```

# Handy aws commands
reference: https://gist.github.com/andytumelty/3651ef79fc00908b4d9f5f6bba05489a
```
# display VPC ID, CIDR Block and Name
aws ec2 --output text --query 'Vpcs[*].{VpcId:VpcId,Name:Tags[?Key==`Name`].Value|[0],CidrBlock:CidrBlock}' describe-vpcs
```
