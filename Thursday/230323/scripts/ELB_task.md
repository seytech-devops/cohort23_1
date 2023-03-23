# Create IAM role
    Name: sshRole (tag)
    Attach policy:
        EC2FullAccess
# Security Group
    Name: sshSG (tag)
     Inbount Rules:
        ssh: from my IP only

# Launch Template:
    Name: sshLT (tag)
    Choose Amazon AMI
    Instance type: t2.micro 
    Resource Tag: 
        Name: sshEC2Instance
    Under advance:
        instance iam role: above created
        security group: same above created

    Userdata:
        #!/usr/bin/bash 
        set -x
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        mkdir -p /var/www/html
        echo "<html><body><h1>My IP is: " >> /var/www/html/index.html 
        TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/public-ipv4 >> /var/www/html/index.html
        echo "</h1></body></html>" >> /var/www/html/index.html
        set +x

# Create Load Balancer:
    Name: sshLB
    type: Network Load Balancer (NLB)
    scheme: internet-facing
    Ip address type: ipv4

    # Create Listener:
        TCP: 22
        AZ: Select all of them
        TAG
            Name: sshLB

# Create Target Group
    Name:           sshTGR (tag)
    Target type:    Instance
    Protocol:       TCP
    Port:           22

After the Target Group gets created
    - Select above created Target Group  --> Actions --> Register and Deregister


# Create AutoScaling Group (ASG) in N Virgina Region
    Name: sshASG (tag)
    minimum: 1
    desired: 2
    max: 2
    subnets: Select all 6 of them
    Launch Template: Above created (Version: Latest)


## Please try and test with changing the AUTO scaling group numbers
- Try to login(ssh) using the Load Balancer DNS name


## Login (ssh) into one of the EC2 and check the logs
/var/log/cloud-init-output.log  Look for the comamnds we have passed into userdata.

## How to make not to check the hosts file
    `-o StrictHostKeyChecking=no`

## How to ignore the error to /dev/null
    `-o UserKnownHostsFile=/dev/null`

## How to check the userdata on ec2 using from metadata service:

TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/user-data