# Projects
This is Projects Folder contains number of different projects.

## Tools:
1. DevOps/SRE/Cloud Team:
    - Container Orchestration Tool:
        - Docker:
            - Dockerfile 
        - Kubernetes:
            - EKS
            - AKS
            - GKE
        - DockerCompose:
        - ECS 
    - Infrastructure as a Code:
        - Terraform
        - CloudFormation
    - Configurations Management Tool:
        - Ansible
        - Chef
        - Puppet
        - SaltStack
    - CI/CD 
        - Jenkins
        - GitHub Action
        - Azure-DevOps
        - Bamboo
        - TravisCI
        - CircleCI
    - Cloud Provider:
        - AWS
        - GCP
        - Azure
        - Rackspace
    - Artifactory:
        - Nexus
        - Jfrog 
    - Secret Managements Tool:
        - CyberArk
        - Hashicorp Vault 
        - AWS Secret Manager
    - Code Scanning Tool:
        - SonarQube 
    - Operating System:
        - Linux:
            - RHEL 
            - CentOS
            - Ubuntu
            - Amazon Linux 
        - Windows
    - File Format:
        - Json
        - Yaml 
    - Text Editor:
        - Vim
        - Vi
        - VSCode
    - Scripting:
        - Python
        - Bash
        - Groovy 
    - Internal Chat Tool:
        - Slack
        - Teams
        - Outlook (Email)
    - Source Version Control:
        - GitHub
        - Bitbucket
        - Gitlab
        - Azure-DevOps
    - Issue Tracking Tools
        - Jira
    - Documentation Tools:
        - Confluence 
    - Change Management Tool:
        - ServiceNow
        - BCM Remedy
    - Monitoring:
        - DataDog 
        - Grafana (Dashboard)
        - Promethues
    - Log Management:
        - Splunk (agent)    --> maybe using ansible
        - Coralogix 
        - Logstash
        - CloudWatch (agent)
2. Security Team:
    - Security information and event management (SIEM):
        - Arcsight
        - Alert Logic (Appliance) 
    - Web Application Firewall(WAF):
        - Signal Science (WAF)
        - CloudFront - Content Delivery Network (CDN)
        - Akamai 
    - Container Resistry
        - Harbor 
        - DockerHub 
        - Nexus 
        - ECR Registry
        - Google Registry 
    - Security Orchestration, Automation and Response Tool  (SOAR):
        - Demisto 
    - Thread Detection Tool:
        - ExtraHop
3. IAM Team
    - Active Directory (AD), NIS, LDAP. IDP ( Identity provider)
        - Keep user and groups (User maangement)
            - Organization (Org)
                - Organization Unit (OU)
                    - Technology
                        - Dba
                            - 10 members
                        - DevOps
                            - 16 engineers
                    - Human Resource
                        - 8 people 
    - Single Sing On:
        - Okta
        - PingFed
        - Auth0
4. Database Team:
    - Databases:
        - Oracle
        - MySQL
        - Postgress
        - MongoDB
        - RDS
        - Aurora
    - Modern Database Security Tool:
        - Jsonar 
5. Data Science Team:
    - Big Query 
    - Athena
    - Snowflake
6. Developers:
    - Maven
    - Grade 
    - SonarQube 
    - Java
    - NodeJS
    - Ruby 
7. QA/SDET/Tester: 
    - java
    - cucumber
    - selenium
--- 

## Jenkins
- One time was adminsittering Jenkins, Installed from scratch  
- Created All kinds of Pipeline
    - Mostly using the Declarative Pipeline using Jenkinsfile
        - Single Job
        - Regular Pipeline
        - Multibranch pipeline
    - Upstream /Downstream jobs 

## Terraform
- Deployed AlertLogic Appliances into AWS via CloudFormation/Terraform
- Deployed Jsonar DB Security Application into AWS
    - Insfrastracture is done by Terarform
        - AWS services like, Load balancer, Auto Scaling, Launch Template, Security Group, ACM, SNS, SQS, CloudWatch, S3, IAM 
    - Automated with Installation with Ansible.
        - non-interactive isntallation steps from the documentation mnaually first 
    - Integrated with Active Directory and SSO (PinFed)
- Deployed Arcsight Connector into AWS , Security team needed a help. 
    - Created TF module
    - IAM
- Singal Science as a WAF 
    - Deployed agent into ECS cluster as sidecar (initcontainer)
- Homework

## Ansible 
- Created role  shutdown_app_role, that does auto-shot down our application based on the file
    - shutdown_app_role:
        - Shutdowns the service
        - Shutdowns the application
    - System team could call include my role during their patching
    - Created Change reuqest where in ServiceNow or Remedy. 
        - Get approved by manager
        - Gets scheduled
    - start_app_role:
        - it does start the application, service, enabled service.
        - some test task that does simple sanity check.
- Automated Demisto server installation. Created role for that as well.

## AWS 
- CloudFormation
    - Had to update the policies
    - Create stack that does deploy AWS resources.
- Created Lambda function that does tag all the missing EC2 resources for Extrahop

## Python 
- Created class that pull creds from cyberark 
    - Created this as a ansible role so other can import that that role.

- While working with Arcsight ESM, I have created python automation. 
- Demisto 
    - Had to create a lot of python code and create python based image
- Harbor
    - When we create an Image for Demisto it was a python based, I had to publish into Harbor under our  demisto/application id.
    - Harbor scans it and sings syat it is good image.
    - Pull from there and deploy into Demisto, 
        - Dev, QA, Prod

## Monitoring 
- Grafana custom dahsboard import automated
    - I  have created many diffent custom dahboards 
        - ccheck the incoming traffic 
        - check cpu amd memory usage
- Promethues monitor servers not in kube cluster
    - Monitors cluster and alerts if it fails.
    - Create to monitor custom Rabbitmq servers.

---

# Random projects:
- Terraform created module that does create AWS Batch Compute env
    - Launch template
    - IAM roles
    - S3
    - Job Queue and Job Defination.
- Created automation using terraform that does ami update on monthly base
    - My team creates AMI on monthly base, we use packer
- Created terraform to create new container ami off base ami and update compute enviroment with that ami
- Create bash script that does that arguments and creates/generates AWS Batch compute job defination.
- I invoked the above scrpt in ansible to run jobs in compute environment
- I brought my team to be the first adopted to devops tools created by platform team.
- Using Azure cli to create the base infracture so I can run terraform and others stuff to create resource in Azure.
- Azure virtual scale set, agentpool.

- Manage user
    - How to access AWS:
        - Integrated Active Directory user/groups comes from it:
            - When I create account, need to add group and add permission set. 


- have you had any issues while working on that project?
