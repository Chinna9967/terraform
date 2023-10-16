terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }

  
 backend "s3" {
    bucket   = "roboshop-remote-state-tfvars"
    key = "tfvars"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking-tfvars"
  }
}

provider "aws" {
  # Configuration options
  # we can give access and security key here,but security problem
  region = "us-east-1"
}

