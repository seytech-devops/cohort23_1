# Uses the data source

data "aws_vpc" "defaultvpcid" {
  tags = {
    Name = "Default"
  }
}

