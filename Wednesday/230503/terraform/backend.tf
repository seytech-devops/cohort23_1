terraform {
  backend "s3" {
    bucket = "yourbucket"
    key    = "state/ec2/terraform.state"
    region = "us-east-1"
  }
}
