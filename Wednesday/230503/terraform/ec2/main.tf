variable "instances" {
  default = {
    "redhat" = "ami-016eb5d644c333ccb"
    "amazon" = "ami-0889a44b331db0194"
    "ubuntu" = "ami-007855ac798b5175e"
  }
  type = map(any)
}

variable "ami" {}

resource "aws_instance" "ec2" {
  for_each = var.instances

  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = each.key
    AMI_ID = each.value
  }
}