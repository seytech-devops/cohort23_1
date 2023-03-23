# Create IAM role
    Name: appRole (tag)
    Attach policy:
        EC2FullAccess
        S3FullAccess
# Security Group
    Name: appSG (tag)
     Inbount Rules:
        http: from everywhere
        ssh: from myIP
        custom: 9090 from everywhere

# Launch Template:
    Name: appLT (tag)
    Choose Amazon AMI
    Instance type: t2.micro 
    Resource Tag: 
        Name: appEC2Instance
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
    Name: appLB
    type: Application Load Balancer (ALB)
    scheme: internet-facing
    Ip address type: ipv4

    # Create Listener:
        HTTP: 9090 
        AZ: Select all of them
        TAG
            Name: appLB

# Create Target Group
    Name:           appTGR (tag)
    Target type:    Instance
    Protocol:       HTTP
    Port:           80

After the Target Group gets created
    - Select above created Target Group  --> Actions --> Register and Deregister


# Create AutoScaling Group (ASG) in N Virgina Region
    Name: appASG (tag)
    minimum: 1
    desired: 6
    max: 7
    subnets: Select all 6 of them
    Launch Template: Above created (Version: Latest)









