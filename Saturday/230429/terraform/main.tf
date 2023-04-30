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
  region = var.aws_region
}

## Resources : Create EC2
resource "aws_instance" "appserver" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_ssh.id]

  tags = {
    Name = "MyEC2"
  }
}


# Resource: SG
resource "aws_security_group" "ec2_ssh" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.defaultvpcid.id

  ingress {
    description = var.sg_description
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = var.egress_output
    to_port     = var.egress_input
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_blocks
  }

  tags = {
    Name = var.sg_name
  }
}