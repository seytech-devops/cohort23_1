# Class Notes - 2023.03.13

## AWS VPC - Virtual Private Cloud

AWS VPC is a networking service provided by Amazon Web Services (AWS). It enables us to create a private virtual network in the AWS cloud, allowing us to launch AWS resources like EC2 instances, RDS databases, and more within a virtual network that we define.

##### VPC Features
- Utilizes high availability of AWS Regions and Availability Zones
- Subnet: Used to divide VPCs, and allows it to span multiple AZs
- Route Table: Controls traffic going out of subnets
- Internet Gateway: Allows internet access from VPC
- NAT Gateway: Allows private subnet resources to access the internet
- Network Access Control Lists (NACL): Stateless control access to subnets
- Security Group: Routes traffic to instance and functions as built-in firewall
