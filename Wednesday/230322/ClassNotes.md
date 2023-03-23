# Class Notes - 032223
# Elastic Load Balancer 
## What is Load Balancer?
    - its job to accept traffic from customer and forward to backend registered servers
    - it wil have its own aws generated dns name

Type of load balancers:
    - internet-facing
        - this makes the load balancer reachable from public
        - it needs to be alooacated with public ip 
        - the backend can be both in private and public subnets
    - internal
        - this will have private ip only


There are three types of load balancer exists in AWS
- Application Load Balancer (ALB)
    - supports HTTP/HTTPS/Websocket 
- Network Load Balancer (NLB)
    - Supports TCP, TLs, UPD
- Gateway Load Balancer 

### Round-robin 
- distributing load to registered targets strategy.
- This the simpliest and most straight forward strategy
- most used one too.


# MetaData info about the EC2 Instance
Command: `curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data`

ami-id
ami-launch-index
ami-manifest-path
autoscaling/
block-device-mapping/
events/
hostname
iam/
identity-credentials/
instance-action
instance-id
instance-life-cycle
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-hostname
public-ipv4
public-keys/
reservation-id
security-groups
services/


# Demo Load Balancer
## How to create Load Balancer
    - Create Load Balancer
    - Select Application Load Balancer (ALB)
        - Provide the name
        - Select the scheme (internet-facing)
        - Ip address type (ipv4)
    - Listener (is what Load Balancer will listen on)
        - Select HTTP --> 9000 port
    - Availibilty Zone (AZ)
        - Select all available subnets
    - Tag 
        Name : appLB
    - Next 

    - Configure Security Groups
        - Select the SG you want 
    - Target Group (You create a Target Group and register EC2s with that Target Group)
        - Provide name
        - Targey Type  (Instance)
        - 