# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.60.0"
#     }
#   }

#   required_version = "~>1.4"
# }

# module "using_module_ec2" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "4.5.0"

#   name = "module-instance"

#   instance_type          = "t2.micro"
#   key_name               = ""
#   monitoring             = true
#   vpc_security_group_ids = ["sg-0c2f341b7f831c77c"]
#   subnet_id              = "subnet-026f223ca824a576f"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

# module "single_ec2" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "5.0.0"

#   name = "single-instance"

#   instance_type          = "t2.micro"
#   key_name               = ""
#   monitoring             = true
#   vpc_security_group_ids = ["sg-0c2f341b7f831c77c"]
#   subnet_id              = "subnet-026f223ca824a576f"

#   tags = {
#     Terraform   = "true"
#     Environment = "qa"
#   }
# }

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

# Using resuource
resource "aws_instance" "using_resource_ec2" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = length(var.instance_type) != 0 && var.create ? var.instance_type : "t2.micro"

  tags = {
    Name = "EC2 using a TF resource"
    OS   = "Redhat"
  }
}