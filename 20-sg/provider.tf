terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "27s-remote-bucket"
    key    = "expense-vpc-dev"
    region = "us-east-1"
    dynamodb_table = "27s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}