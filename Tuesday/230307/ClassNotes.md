# Class Notes - 030723

# What is Cloud Computing?
    - 

# What is Amazon Web Services (AWS)?

- In order for us to use aws we need create a account:
    - unique email
    - name
    - credit card 
    - Enable MFA (MUlti Factor Authetication)

**ROOT USER ACCOUNT**  
    - should not be used anything other then just create an account and setup very first admin user. 
    - Create billing budget alerts

ARN = Amazon Resource Name

### What is AWS Resource?
    - All the resources/service we use in AWS.

- AWS has over 200 services, 

### 1. AWS Identity and Access Management (IAM)
- Responsible managing the access to AWS resources

    - User group        --> group for users
    - Users             --> identity that has credentials to login into AWS system
    - Roles             --> responsibilty of the identity 
    - Policies          --> basically is a permission, what a identity can do
    
There are two types of policies:
    - AWS managed polices:          Pre-definer policies AWS created
    - Customer Manager policies:    Customer created policies     

### TAGS
    * key-value pair
        key = school
        value = seytech
         
        key = name
        value = gulai

###  User Group & User create process
- As ROOT USER ACCOUNT: 
    - We created user group and user and added into group.


### How to create admin user
- As ROOT USER ACCOUNT:
    - Create admin user called "iamadmin"
    - Enable MFA 
