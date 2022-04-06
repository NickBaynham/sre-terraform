terraform {
  backend "s3" {
    bucket         = "nbaynham-vpc-terraform-state"
    key            = "nbaynham-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "nbaynham-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "~> 0.14.5"
}
