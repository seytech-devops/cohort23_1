# Class Notes - 032023

## RECAP:
    - IAM role


## LAUNCH TEMPLATE & AUTO-SCALLING GROUP

### WHAT is LAUNCH TEMPLATE (LT)?

launch          ==      create 
template        ==      

- using a launch template we can create a EC2 instance
- can hold values, configuration for EC2.

### Create LT
- Under EC2 section create a Launch Template
- provide the neccessary inputs
- after it gets created, it should show launch template under EC@ --> Launch Templates


### What is Auto-scalling group in AWS EC2
- Scalling up or down the number of EC2 instance based on the incoming traffic.

For example:
    - When there is a more traffic during the peak season, or holiday season, or during the day time it can create max number of EC2 instances that has been configured

### ASG has Group size:
    - Desired Capacity      --> desired(wanted) number of EC2
    - Minimum Capacity      --> the minimum number of EC2
    - Maximum Capacity      --> the maximum number of EC2

### Vertical Scalling
    - not efficient, 
    - have some limit
    - once added the resources, hard to reduce it again

### Horizontal scalling
    - more preffered way of handling scaling strategy
    - more efficieint, flexible



## User Data in EC2
### What is USER DATA?
    - it is bootstrap process
    - for example:
        - I want to install httpd
        - create ssh-key
        - install another package 


