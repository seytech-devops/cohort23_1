# Login into AWS Account as iamadmin user
# Create iam role 
    name: WebserverIAMRole
    use for EC2 as service
    Attach a full EC2 policy
    Attached a full S3 access
# Create security group
    name: WebserverSG
    allow: inbound  rules
    inboud rule for 22 should be from myIP only
    port: 443, 80 from 0.0.0.0/0
# Create launch template
    use Amazon AMI
    user t2.micro instance type free tier eligbable
    use above created SG
    use above created IAMRole
    select exising ssh key
    select a subnet
    add userdata section
    Add tag for launch template itself
        Name: WebserverLT
    Add resource tag:
        Name: Webserver
# Create Auto scalling group
    - Create ASG using the Launch template
    - Set
        - minimum: 1
        - desired: 2
        - maximum: 3
    - Set to the latest launch template
    - Check the activity if it creates ec2 instances
    - ssh to server and check the userdata log
        /var/log/cloud-init-output.log




    
