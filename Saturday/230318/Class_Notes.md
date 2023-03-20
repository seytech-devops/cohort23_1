# Class Notes - 20230318

############# Good morning Class ##################
```
aws ec2 describe-instances --region us-east-1 --output=json | jq .[] | jq ."OwnerId"

export AWS_REGION="us-east-1"
env | grep AWS

aws ec2 describe-instances --region ${AWS_REGION}

aws ec2 describe-instances --region us-east-1 --output=json | jq .[] | less

```
``` 
curl http://IP_address/latest/meta-data/{local-ipv4}
```



## Task to complete:
- Create an instance in us-west-2, assign a role ec2 full access -> assign s3 full access(after you spun up your 
	instance) -> describe the instance. 

 7 min.


- aws ec2 describe-instances --region <<AWS_REGION>> | grep -A 3 "Tags" => redirect the output to the sandzhi.txt 
=> git hub (seytech ORG - homework_submission)

5 min

***https://github.com/seytech-devops/homework_submission***


* ec2 intance in AWS console --> Check mark --> Security --> add iam role

* install git:

sudo yum install git
