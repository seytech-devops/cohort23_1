# Data call to find a latest AMI using the tags

data "aws_ami" "amazon_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "ubuntu_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

variable "create_ec2" {
  description = "Switch to control EC2 creation"
  type        = bool
  default     = false
}

# Locals
# Is used to manipulate the data 
locals {
  common_tags = {
    Department = "DevOps"
    Owner      = "DevOps Team"
  }
}

locals {
  myworkspace = {
    TF_Workspace = terraform.workspace
    Name         = "DevOps"
  }
}

resource "aws_instance" "app" {
  count         = var.create_ec2 ? 1 : 0
  ami           = data.aws_ami.amazon_ami.id
  instance_type = "t2.micro"

  tags = local.common_tags
}

resource "aws_instance" "web" {
  count         = var.create_ec2 ? 1 : 0
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = "t2.micro"

  tags = local.common_tags
}

locals {
  instance_ids = concat([aws_instance.app.*.id], [aws_instance.web.*.id])
}

output "ec2_ids" {
  value = local.instance_ids // referrencing the local defined value 
}


resource "aws_instance" "example" {
  # count = terraform.workspace == "default" ? 1 : 2

  ami           = data.aws_ami.amazon_ami.id
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'Destroy-time provisioner'"
  }

  tags = merge(local.common_tags, local.myworkspace)
}

# output "example_output" {
#   value = aws_instance.example.*.id
# }

# output "example_private_ip" {
#   value = aws_instance.example.*.example_private_ip
# }


# count = 5 if the workspace if equal to default
# instance1 == index0
# instance2 == index1
# instance3 == index2
# instance4 == index3
# instance5 == index4

# Array or List [1,2,3,4,5,6,7,8,9,10]
# first element is 1, and it a 0 index

