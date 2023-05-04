terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.65.0"
    }
  }

  required_version = "~>1.4"
}

variable "bucket_names" {
  default = ["tbbuc1", "tbbuc2", "tbbuc3", "bucket4"]
}

resource "aws_s3_bucket" "bucket" {
  for_each = { for name in var.bucket_names : name => name if length(name) < 7 }

  bucket = each.value

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
