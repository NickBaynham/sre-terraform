terraform {
  backend "s3" {
    bucket         = "nbaynhamclusters-terraform-state"
    key            = "nbaynhamclusters.tfstate"
    region         = "us-east-1"
    dynamodb_table = "nbaynhamclusters-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

data "aws_ssm_parameter" "workers_ami_id" {
  name            = "/aws/service/eks/optimized-ami/1.15/amazon-linux-2/recommended/image_id"
  with_decryption = false
}
