# Class Notes - 030823

## HOMEWORKS CHECK:
    - Clear
    - Followed step by step
    - In real world will be using the same process

## RECAP 
    - AWS  ACCOUNT 
        - ROOT USER ACCOUNT 
            - password manager tools such as 1password, keeper, hashicorp vault, cyberark. 
        - IAM ADMIN ACCOUNT (iamadmin)
            - admin user account for whole AWS Account
                - add users, groups
                - create resources and many more
        - ARN (Amazon Resource Name)
            - is a unique name that AWS assigns for each resource when it gets created.
            - unique : has no dublicate, no copy, is a unique, single
## AWS has more then 200 services 
    - AWS Service
        - IAM
        - EC2
        - RDS
        - S3
    - AWS resource 
        - user 

## Terminalogies 
    1. Authentication
        - authenticating into the system (AWS), account (AWS) using 
            - username/password 
    
    2. Authorization
        - identity (user) needs to be authorized to take an action on anything. 
    
    Example:
        - Give all permission to all teams:
            - Data Sciencetics 
            - Develop
            - Finance
            - Application
            - QA
            - Database
            - others
        - They can play spin up big resources and there is nothing that blocking AWS not to spin those up and charge


    # Above brings more Terminalgies here:
        # SAAS  --> Software as a service
            - Gmail, Miscrosoft 365, 
            - As consomer, user - you don't have to configure or modify much thing
        # PAAS  --> Platform as a service
            - What is Platform:
                - Heruko --> Install your application and just works, you have a bit more control here then SAAS
        # IAAS  --> Infrastructure as a Service
            - What is Infrastcuture?
                - It does include architecting, securing
                - It gives much more control on infrastructure
            
            - Infrastructure as code (IAAC)? Terraform
                - meaing when things are happeing in automated way

        # Pipeline as a service
        # Function as a service 
        # Pipeline as a code


## In order to login into AWS, what do we need?
    - username
    - password 

## What is this proccess called?
    - Authentication 


[AWS Documentation](https://docs.aws.amazon.com/)

## What is IAM role?
    - is similar to an IAM user
    - it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. 
    - Instead of being uniquely associated with one person, 
    - a role is intended to be assumable by anyone who needs it. 
    - Also, a role does not have standard long-term credentials such as a password or access keys associated with it.
    - Instead, when you assume a role, 
    - it provides you with temporary security credentials for your role session.

## By default, when you create user, group, role there is no permission attached to it
    - everything is denied when try to login into AWS Account 

### What is default?
    - It comes with the product, can be changed later.
    - It is a default settings.

## Methods (Ways) to Login (Autheticate) into AWS are:
    - AWS Console 
        - username/password 
    - AWC CLI 
        - Access key / Secret Access Key  (similar to ssh)
        - ssh-key 
    - AWS API 
        - token 
        - Access Key /Secrect Access Key 
        - SDK - Software Development Kit


## Introduction to JSON
    - JavaScript Object Notation 
    - is a text format for storing a data 
    - .json extention


## everything in AWS are in json, policies are defined in JSON format 
    {}  --> key-value, map, dictionary

    ```
    {
    "students_name": [
        "Aigerim",
        "Aidar",
        "Gulai",
        "Jason"
    ], 
    "ages" : [
        30,
        25,
        23
    ],
    "adress": {
        "Address1" : "Chicago",
        "Adress2": "Seattle"
    }
    }
    ```

## Programming language, or Computer language:
    Object - Data types:                                SYMBOLS
        - string                                        "", '', "10", '10'
        - number (integer)                              10, 4
        - map (key-value, dictionary)                   {"" : "", "Number" : 10, "Name": "Batyr" }
        - list (array)                                  ["", '', 10, "10", "Name"]  --> element of array, list
        - float (reminder)                              10.5, 2.7

    "10" != 10



## Introduction to IAM Policy

### What is IAM policies?
    - it define permissions for an action regardless of the method that you use to perform the operation. 
    - For example, if a policy allows the GetUser action, 
    - then a user with that policy can get user information 
        - from the AWS Management Console
        - the AWS CLI
        - AWS API 

AWS IAM Policy has two types:
    - AWS managed policies
    - Customer managed policies

### How to create a IAM policy on AWS Console (Manually)
- IAM --> Policies --> Create Policy 
    - pass in json 
    - visual visual editor

- It has Attributes(Actions)
    - iam:GetGroup
        - iam:          service identifier
        - GetGroup      Attribute (Action)
    
    - iam:*             --> wildcard, which provides all attribute(action)

    - arn:aws:iam::377536926414:user/*
        - arn           --> amazon resource name
        - aws           -->
        - iam           --> service 
        - 377536926414  --> account number 
        - user          --> user space
        - '*'          --> all (all users)

    - arn:aws:iam::377536926414:user/tlektes        --> only tlektes user


# AWS EC2

## What is Elastic Cloud Computing (EC2)?
    - it is a service that enables us
        - to use to store data
        - to process data
        - provides resource to run and process data, application, software, program
    - It is a Service where we spin up the Virtual Machines

Before AWS, It was a VMWARE (used to be a virtulization solution for many year in the market)
    - GEST Operating System (VM)

- [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html)
- [AWS Free Tier](https://aws.amazon.com/free/?trk=78b916d7-7c94-4cab-98d9-0ce5e648dd5f&sc_channel=ps&s_kwcid=AL!4422!3!432339156165!e!!g!!aws%20free%20tier&ef_id=Cj0KCQiAgaGgBhC8ARIsAAAyLfFmw6hBw6XiSMpNZcqVYwA-PJVuIuX2eATjMDIo15VGtkuLQzAlL_IaAtQOEALw_wcB:G:s&s_kwcid=AL!4422!3!432339156165!e!!g!!aws%20free%20tier&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)

## Install AWS cli:
[How to install aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
