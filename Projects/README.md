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


## Kubernetes
- Deployed garfana, promethues using helm charts
- Deploy Vault with console into kube cluster with helm 
- We have rancher where we manage the kube visually it is like a Lens. 


## Tools written languages:
- Terraform --> HCL --> go
- Ansible --> YML --> python 
- Jenkins --> DSL/Groovy/java --> java
- Chef/Puppet --> DSL/ruby --> ruby 


## CI Tools control file name:
- Jenkins (Jenkinsfile)
- Azure DevOps (azure-pipelines.yml)
- Gitlab (gitlab-ci.yml)
- GitHub Action (.github/workflows)

- have you had any issues while working on that project?

    
## How to setup Kube Cluster Via Ansible:
- You run ansible playbook taht calls many roles:
    - You have 8 servers:
        - Ansible must do the following:
            - configure 3 serevrs as a control plane
            - 5 servers as a worker node
        - How does it do?
            - Using invertories
        - Run kubeadm in ansible to install kubernetes cluster
        - Using heml in ansible I install promethues and grafana
        - Also install Vault and console via helm in ansible
    
    - Can you please provide some of the modules you used in Ansible:
        - helm
        - copy
        - file
        - dir
    - What is the difference between defualt and vars:
        - The value in vars will overwrite the one in default one

    - Difference between ansible collection vs roles
        - collection caontains multiple roles
        - roles contain one or multiple task


## Troubleshoot
- I found ssh conenction time out. By default it is set to 5 minutes 
    - /etc/ssh/sshd_config : 
    - When you set the ClientAliveInterval value in the SSH server configuration file (typically located at /etc/ssh/sshd_config), it enables a keep-alive mechanism to ensure that SSH connections remain active even when there is no activity.

- [Kubelet won't reconenct to Apiserver after NIC failure](https://github.com/kubernetes/kubernetes/issues/87615)
    - We have kube cluster running on your on-prem data
        - Those run on Linux machines
        - Those are Virtual machines run in VMWare (Now, I use more like a OS Guess system)
            - VMWare admin privisoned a vm for you
                - 
    - 3 control plane (three different IPs)
        - HA 
            - HAproxy 
            - KeepAliveD
    - 5 worker node
    - You have received an alert from promethues
        - Kube cluster is down.
        - You login to cluster (UI - Rancher, LIke a LEN)
        - You start login the server (ssh)
            - He asked you said you login to server, how do you login, what do you mean by that?
            - The What do you do?
                - troubleshooting steps NOW:
                    - check ip (ifconfig -a)
                    - kubelet (check kubelet service)
                        - up and running
                    - check the logs
                        - you will see the issues
        - get the failure message and google it
            - I found a bug open agaent the kubernetes.
            - It was due to a version you guys used. 
            - Still didn't fix yet. This was a recent.
    - Solution maybe:
        - Data center has some issue with networking
            - Your VM NIC down for quick time

- [HTTP2](https://github.com/golang/go/issues/40201)
    - Switched the Data center, VMWare start getting failed (kubeadm setup cluster)
- Azure Application gateway needed for app that needs internet access
- everything else  is on kube cluster.



# Posible HR questions:
- Why are you looking for a new job?
    - Contract 
    - Looking for change becaue of
    - I looked your company and also like the job descrioption. I like it a lot bacause of this something. 
- If you wree hired when will you start?
- What are you looking on your next role?
- What do you know about our compnay?
- Are you looking actively?
- Do you have any other interview in pipeline?
- How soon are you able to join?
- Is  contract to hire works for you?
- They ask about your tech skill
- Try to make a great conversation
- Have you had a conflict with your coworker or manager?
- How do you priortize the task
- How do you manage your time?
    - I use my calender
- Give some feedbak like
    - thank you for sharing. this is awesome.
    - make sense
 - What platform do you to lear and keep up your skill, learn new tools.
    - Join webinar
    - Workshops
    - Conference
    - Read articales
- How many team meber in your team?
- WHich team do you work with?
    - Security Team
    - DBA TEam
    - QA
    - Networking Team
- This is a remote job, will that work?
- This is a hybrid postion, will that work?
- Can you walk me through how is your day to day look like?

# Ask questions to interviewer
- About the company
- About the tech, tool.
- About the interview process
- About the team