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
        - Splunk 
        - Coralogix 
        - Logstash
2. Security Team:
    - SIEM:
        - Arcsight
        - Alert Logic 
    - WAF:
        - Signal Science (WAF)
        - CloudFront | Akamai 
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
    - Active Directory (AD)
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

--- 

## Jenkins
- One time was adminsittering Jenkins, Installed from scratch  
- Created All kinds of Pipeline
    - Mostly using the Declarative Pipeline using Jenkinsfile
        - Single Job
        - Regular Pipeline
        - Multibranch pipeline

## Terraform
- Deployed AlertLogic Appliances into AWS via CloudFormation/Terraform
- Deployed Jsonar DB Security Application into AWS
    - Automated with Installation with Ansible. 
- Deployed Arcsight Connector into AWS.
- Singal Science as a WAF 
    - Deployed agent into ECS cluster as sidecar

## Ansible 
- Created role that does auto-shot down our application based on the file
    - System team could call include my role during their patching
- Automated Demisto server installation. Created role for that as well.

## AWS 
- CloudFormation
    - Had to update the policies
    - Create stack that does deploy AWS resources.
- Created Lambda function that does tag all the missing EC2 resources for Extrahop

## Python 
- Created class that pull creds from cyberark 
    - Created this as a ansible role so other can import that that role.

- While working with Arcsight ESM, I have created python automation 
- Demisto 
    - Had to create a lot of 
- Harbor
    - When we create an Image for Demisto it was a python based, I had to publish into Harbor under our application id.
    - Pull from there and deploy into Demisto, Dev, QA, Prod

## Monitoring 
- Grafana custom dahsboard import automated
- Promethues monitor servers not in kube cluster

---

# Random projects:
- Terraform created module that does create AWS Batch Compute env 
- Created automation using terraform that does ami update on monthly base
- Created terraform to create new container ami off base ami and update compute enviroment with that ami
- Create bash script that does that arguments and creates/generates AWS Batch conpute job defination.
- I used that in ansible to run jobs
- I brought my team to be the first adopted to devops tools created by platform team.
- Using AZ cli to create the base to can run terraform and others.
- Azure virtual scale set, agentpool.
- Manage user
    - How to access AWS:
        - Integrated Active Directory user/grroups comes from it:
            - When I create account, need to add group and add permission set. 