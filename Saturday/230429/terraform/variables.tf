###################################################
# Global Variables
###################################################
variable "aws_region" {
  description = "The AWS region to deploy EC2 isntance"
  type        = string
  default     = "us-east-1"
}

# variable "vpc_id" {
#   description = "The VPC ID the resources get deployed to"
#   type        = string
#   default     = "vpc-008d516bd30c6d1fc"
# }

###################################################
# EC2 Variables
###################################################

variable "ami_id" {
  description = "The ami id to create a EC2 instance"
  type        = string
  default     = "ami-02396cdd13e9a1257"
}

variable "instance_type" {
  description = "The EC2 Instance type to provision"
  type        = string
  default     = "t2.micro"
}

###################################################
# Security Group Variables
###################################################
variable "sg_name" {
  description = "The name for SG"
  type        = string
  default     = "EC2-SSH-SG"
}

variable "sg_description" {
  description = "The EC2 SSH Security group"
  type        = string
  default     = "The EC2 SSH Security Group"
}

# Ingress varaibles
variable "from_port" {
  description = "The EC2 SSH Security group"
  type        = number
  default     = 22
}

variable "to_port" {
  description = "The EC2 SSH Security group"
  type        = number
  default     = 22
}

variable "protocol" {
  description = "The protocol"
  type        = string
  default     = "TCP"
}

variable "cidr_blocks" {
  description = "The cidr_blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

# Egress variables

variable "egress_output" {
  description = "egress_output"
  type        = number
  default     = 0
}

variable "egress_input" {
  description = "egress_input"
  type        = number
  default     = 0
}

variable "egress_protocol" {
  description = "egress_protocol"
  type        = string
  default     = "-1"
}

variable "egress_cidr_blocks" {
  description = "egress_protocol"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}