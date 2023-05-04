terraform {
  backend "s3" {
    bucket = "yourbucket"
    key    = "state/terraform.state"
    region = "us-east-1"
  }
}
