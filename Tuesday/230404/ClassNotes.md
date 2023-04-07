# Virtual Private Cloud (VPC)
    - is a Virtual Network inside AWS
    - is a regional service 
    - by default it is private and isolated unless you decide otherwise except the default VPC
    - Two types of VPC(s):
        - Default --> Only one per region per account
        - Custom --> Can have multiple 

## VPC Architecture:
    - AWS Account
        - region (us-east-2)
            - Default VPC --> IP CIDR (172.31.0.0/16)
                - EX(us-east-2):
                    - us-east-2a(SubnetA)
                        - 172.31.0.0/20 --> Start 172.31.0.0 : End 172.31.15.255 (4094 Host)
                    - us-east-2b(SubnetB)
                        - 172.31.16.0/20 --> Start 172.31.16.0 : End 172.31.31.255 (4094 Host)
                    - us-east-2c(SubnetC)
                        - 172.31.32.0/20 --> Start 172.31.32.0 : End 172.31.47.255 (4094 Host)
                - One per region
                - Can be removed and recreated 
                - /20 Subnet in each AZ in the region get created
            - TRY delete and recreate from console:
                - Login AWS Console VPC service
            - Best practice not to use Default VPC 

## VPC Structure and Sizing
    - What size should the VPC be?
    - Are there ny Networks we can't use?
    - VPCs, Cloud, On-premises, Partners & Vendors
    - VPC Structure --> Tiers & Resiliency (Availibility) Zones

## CIDR Ranges (IP Address ranges):
    - minimum --> /28 (16)
    - maximum -->/16 (65536)

    Example to use aything between below IPs Ranges:
        - 10.16.0.0/16 
        - 10.127.0.0/16 
### VPC with 10.16.0.0/16 CIDR IP range split into 16 subents
    - WEB
        - AZ-A, AZ-B, AZ-C, Future
          /20   /20   /20   /20
    - APP
        - AZ-A, AZ-B, AZ-C, Future
          /20   /20   /20   /20
    - DB
        - AZ-A, AZ-B, AZ-C, Future
          /20   /20   /20   /20
    - Spare
        - AZ-A, AZ-B, AZ-C, Future
          /20   /20   /20   /20