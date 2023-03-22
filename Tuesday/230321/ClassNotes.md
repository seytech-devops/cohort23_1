# Class Notes - 032123

## EC2 Instance Status Check
    - System status check 
        - Loss of System Power
        - Loss of network connectivity
        - Host software issue
        - Host hardware issue
    - Instance status check
        - Corrupted file system
        - Incorrect Instance Networking
        - OS Kernel Issue

Both `System status check` and `Instance status check` must be in **green** status

## Bootsrapping EC2 using userdata
- is a process of self-configration steps
- perform some package installation
- perform post installation 

###  Important aspect of USERDATA
- executes **ONLY** at launch time
- is a part of the `EC2 metadata` service

### userdata log files on EC2
- `cat /var/log/cloud-init-output.log`

### WHAT IS A METADATA
    curl http://169.254.169.254/latest/user-data
    - is a information about something (EC2)
### WHAT IS A AMI
    - Amazon Machine Image (Template)
    - Baked in AMI
    - create AMI from another AMI
    - add your packeges in AMI

### DIFFERENCE between AMI and UserData

## EC2 Features:
    - Launch Configuration 
    - Launch Templates
    - both are not configurables, once you create it is locked

## Auto-Scalling Group
    - 


## AWS METADATA Service

### WHAT IS A METADATA
    - has a information about something (EC2)

There are two verison of AWS CLI:
    - awsv1
    - awsv2

To retreive a EC2 Instance metadata, each version uses two difefrent commands:
    for example:
        - awsv1:    http://169.254.169.254/latest/meta-data/

        - awsv2:     
        
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` \
&& curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/


Please update userdata and 
```
yum install httpd
systemctl start httpd
systemctl enable httpd
mkdir -p /var/www/html
cd /var/www/html
echo "<html><body><h1>My IP is: " > index.html 
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/public-ipv4 >> index.html
echo "</h1></body></html>" >> index.html
```