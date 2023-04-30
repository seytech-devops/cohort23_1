# Class Notes - 230429

## Recap:
    What is Terraform?
        - IAAC tool. It is a cloud-agnostic, can work with different providers such as AWS, GCP, Azure, AliBaba and so on. 

## Terraform components
    - provider

    ### What is provider?
        - Is a way the terraform communicates with the providers.
    
    ### How the provider gets called.
        - when we run etrraform init: it will pull all teh necessary packegs, files binaries are defined under a specific provider.

```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.63.0"
    }
  }

  required_version = "~>1.4"
}
```

## Two types of terrform calls
    - resources:
        - we use this to:
            - create, update, modify or delete the resources such as ec2, sg, s3, iam, rds, load balancer any provider reosurces.
    - data sources:
        - we use this to:
            - pull or get the values for existing resources.

## Terraform comamnds
    - terraform init 
    - terraform plan
    - terraform apply
    - terarform output
    - terraform valdiate 
    - terraform fmt --recursive
    - terraform show 
    - terraform console
    - terraform state list 

## Terraform file structure
    - main.tf 
    - variables.tf 
    - outputs.tf 
    - providers.tf      
    - data.tf               --> keeps the data call code.

## How to define the resources in terraform
    - 

## Task 
    - for CloduFormation
    - for Terraform
        - Create EC2
    


## Future things to cover:
    - state file (bakend)
        - remote state file
    - how to pass varibles in cli
    - how to target specific resource
    - modules
    - count, for each
    - built in functions