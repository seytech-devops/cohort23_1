## Class Notes - 20230330


# Agenda for today's class

## Part 1:
# Demo time 

       - Security Group (Aidar, Aigerim)
       - Launch Template (Batyr, Tlektes)
       - Load Balancer (Ilnura, Dzhalsan)
       - VPC (Gulay, Sandzhi)
       - S3 and ec2 (Mirbek) (8min 4x2)
        
-      Saturday class - ASG (Marzhan, Ainura)

---

## Part 2:

# Deep dive into the VPC
#### VPC:
***is a logically isolated portion of the AWS cloud within a region***

    -   you can create multiple vpc(s) inside the region(but each VPC has a different block of IP addresses)

    EX: CIDR 10.0.0.16/16 (VPC1) and CIDR 10.1.0.0/16 (VPC2)***

    - VPC is a virtual network dedicated to your aws account
    - Analoguous to having your own data center inside AWS 
    - It is logically isolated from other virtual networks in the AWS Cloud
    - Provides complete control over the virtual networking env including selection of IP ranges, creation of subnets, and configuration of route tables and gateways
    - 


---
## Subnets within VPC

    -   Subnet is always assigned to one availability zone(meaning - you can't have one subnet in multiple AZs)
    -   Subnets are created within AZs and you can have multiple subnets withing one AZ

---
- VPC (Virtual Private Cloud) - A logically isolated virtual network in the AWS cloud
- Subnet - A segment of a VPC's IP address range where you can place groups
- Internet Gateway/Egress-only IG - The Amazon VPC side of a connection to the public internet for IPv4/6
- Router - Routers interconnect subnets and direct traffic between Internet gateways, virtual private gateways, NAT gateways and subnets
- Peering Connection - Direct connection between two VPCs
- VPC Endpoints - Private connection to public AWS services
- NAT instance - Enables Internet access for EC2 instances in private subnets managed by you
- NAT Gateways - Enables Internet access for EC2 instances in private subnets (managed by AWS)
- Virtual Private Gateway - The Amazon VPC side of a Virtual Private Network (VPN) connection
- Customer Gateway - Customer side of a VPN connection
- AWS Direct Connect - High speed, high bandwidth, private network connection from customer to aws
- Security Group - Instance-level firewall. Unlike traditional network-level firewalls that operate at the boundary of a network, instance-level firewalls are specifically designed to protect individual instances or virtual machines from unauthorized access or malicious activity within a network.
- Network ACL - Subnet-level firewall. A subnet-level firewall is a type of firewall that operates at the boundary between subnets in a network. It is designed to provide security and control over traffic between different subnets within a network

 

