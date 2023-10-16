terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }

  
 backend "s3" {
    bucket   = "roboshop-remote-state"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  # Configuration options
  # we can give access and security key here,but security problem
  region = "us-east-1"
}

