# APP EC2 Outputs
output "app_ec2_instanceid" {
  value = aws_instance.appserver.id
}

output "app_ec2_public_ip" {
  value = aws_instance.appserver.public_ip
}

# SG output
output "sg_id" {
  value = aws_security_group.ec2_ssh.id
}

# existing VPC ID
output "myvpc" {
  value = data.aws_vpc.defaultvpcid
}