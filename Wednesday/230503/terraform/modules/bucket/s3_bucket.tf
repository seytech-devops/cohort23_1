terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.65.0"
    }
  }

  required_version = "~>1.4"
}

provider "aws" {
  region = "us-east-1"
}

variable "bucket_names" {
  default = ["tb-buck1", "bucket2", "buck3", "bucket4"]
}

# bucket_names = "buck1", "buck2", "bucket3", "bucket4"]
#  for name in bucket_names:
#      if length(name) <= 7  // returns true
# then 
# create rbucket 

resource "aws_s3_bucket" "mybucket" {
  for_each = { for name in var.bucket_names : name => name if length(name) <= 9 }

  bucket = each.value
}