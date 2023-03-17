# Class Notes - 031623

# Homework check
    - Dzhalon did OSI model presentation

# Preparation Notes - 030923
####################### RECAP S3 #######################


####################### IAM ROLES ####################### 
# IAM ROLE with EC2:
    - what is IAM role
        - is a identity similar to users, but doesn't get assigned to anybody
 ### How is IAM role useful?
    - It can be assumed by other things such as EC2, OTHER AWS ACCOUNT, 
    - Role are temporary
    - What roles can do
        - same thing as the other identities
    - Console Demo

## what is IAM role?
- is identity same a user 
- short lived credentials
- anybody can assume and used it
- provides 

## Steps taken:
    - Created IAM role "s3_full_accee"
    - Attached a "AmazonS3FullAccess" policy to a role
    - Created EC2 instance
    - Attached IAM ROLE to instance 
    - ssh to the EC2 instance
        - aws s3 ls 

    ssh -i <chaneg_to_private_key_path> user@


## How have you guys able to run:
    - aws cli from your local as a user 
    - able to list and access to S3 bucket 

- Create a ROLE
- Create EC2 instance
- Create S3
- Access S3
    - Create bucket 
        `aws s3 mb s3://<bucket-name>`
    - Check bucket via cli
        `aws s3 ls`
    - Create a text file and copy into bucket
        `aws s3 cp <file-name> s3://<bucket-name>`

## With Roles:
    - you don't have to hard code the `Acces Key` and `Secret Access key`
    - policies control access that role can have
    - you can attach and detach role to running EC2 instance


####################### SECURITY GROUPS ####################### 

## Security Groups
- is a virtual firewall
- by default everything is block
    - nothing is open
- multiple SG can be attached to a single EC2

# How computers communicate
## PORT:
    ssh: 22
    rdp: 3389
    http: 80
    https: 443 

## Terminalogies
    - Ingress (Inbound, Incoming)
    - Egress (Outbound, Outgoing)

## Security Groups has:
    - Rules that controlls the incoming/outgoing traffics.


# Next class EC2 metadata?
## bootstrap(userdata) scripts
- is a scripts, commands basically run when the EC2 instance first runs
- run as a root level
    - yum install httpd
    - systemctl start httpd; systemctl enable httpd

## EC2 with user-data script applied
- Create EC2
- added below script:
    `yum install httpd
    systemctl start httpd
    systemctl enable httpd
    cd /var/www/htlm
    echo "<html><body><h1>Hello DevOps Students</h1></body></html>" > index.html 
    `


curl https://169.254.169.254/latest/meta-data/local-ipv4

Userdata script below
`
    yum install httpd
    systemctl start httpd
    systemctl enable httpd
    cd /var/www/htlm
    echo "<html><body><h1>My IP is" > index.html 
    curl https://169.254.169.254/latest/meta-data/local-ipv4 >> index.html
    echo "</h1></body></html>" >> index.html
`