terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "crn503-remote-state"
    key    = "aws-ec2-module-test"
    region = "us-east-1"
    dynamodb_table = "crn503-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}