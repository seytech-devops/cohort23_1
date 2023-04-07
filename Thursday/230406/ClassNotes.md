# Class Notes - 040623

# VPC Peering 
    - Direct encrypted network link between two VPCs (only TWO)
    - Works same/cross-region and same/cross-account 
    - Same region SGs can reference peer SGs (in same region only)
    - VPC peering doesn't support transitive peering
        - VPCA - VPCB - VPCC (three VPCs required)
    - Routing Configuration is needed, SGs and NACLs can filter

[AWS VPC Peering Architecture](https://seytechdevops.atlassian.net/wiki/spaces/SEYT/pages/edit-v2/24018969?draftShareId=2fa6d83a-fcab-4120-bb55-6fbb5df8af72&inEditorTemplatesPanel=auto_closed)

## Create three VPCs:
    - SeytechA
        - SeytechA-subnet-public1-us-east-1a
            - Will create bastion EC2 in public subnet
        - SeytechA-subnet-private1-us-east-1a
    - SeytechB
        - SeytechB-subnet-private1-us-east-1a
    - SeytechC
        - SeytechC-subnet-private1-us-east-1a

## Steps to create VPC Peering 
    - Create VPC Peering under VPC Services
        - Once this is done, it creates a Physical tunnel between SeytchA-SeytechB VPCs
    - Configure the Route Tables at both VPCs
        - Route table
            - edit rtb for seytecha and add cidr ip of seytechb
            - edit rtb for seytechb and add cidr ip of seytecha

### Create security groups:
    - subneta-sg
        - inbound rules: ssh, icmp
    - subnetb-sg
        - inbound rules: ssh, icmp
    - subnetc-sg
        - inbound rules: ssh, icmp

### Create EC2 instance
    - Two EC2 in SeytechA VPC
        - one in private subnet --> associate the subneta-sg
        - one in public subnet
    - One EC2 in SeytechB VPC   --> associate the subnetb-sg
    - One EC2 in SeytechC VPC   --> associate the subnetc-sg


### Login
    - Public EC2 to private EC2
        - ping private EC2 in SeytechB
        - ssh to private EC2 in SeytechB

### Configure VPCB-VPCC
