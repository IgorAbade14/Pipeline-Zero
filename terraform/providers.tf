terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket = "pipeline-zero-tfstate-iaap3019"
    key = "pipeline-zero-secret-key"
    region = "us-east-1"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}