# Class Notes - 042023

# Intro to: CloudFormation
    - is a Infrastructure as a code tool
    - lets you create, update and delete resources in AWS
    - it uses template, creates a stack using the LogicalID in Template
    - written in json or yaml 

## CF Template Anatomy
    There are different sections that CloudFormation uses:

###  YAML Format 
- AWSTemplateFormatVersion: "2010-09-09"
- Description: "Create EC2 Instance, IAM role"
- Metadata: (Keeps the information about the CF Template). Has following additional features:
    - AWS::CloudFormation::Init
    - AWS::CloudFormation::Interface
    - AWS::CloudFormation::Designer
- Parameters:
  - ParameterLogicalID:
    - Type: DataType
    - ParameterProperty: value
        - ALLOWED PROPERTIES:
            - AllowedPattern

    - CloudFormation currently supports the following dynamic reference patterns:
        - ssm, for plaintext values stored in AWS Systems Manager Parameter Store.
        - ssm-secure, for secure strings stored in AWS Systems Manager Parameter Store.
        - secretsmanager, for entire secrets or secret values stored in AWS Secrets Manager.
- Rules:
    - Each template rule consists of two properties:
        - Rule condition (optional) – determines when a rule takes effect.
        - Assertions (required) – describes what values users can specify for a particular parameter.
    - A rule can include a **RuleCondition property** and must include an **Assertions property**. 
    - For each rule, youcan define only one rule condition. You can define one or more asserts within the Assertions property. If you don't define a rule condition, the rule's assertions always take effect.

    - Rule specific intrinsic functions:
        - Fn::And
        - Fn::Contains
        - Fn::EachMemberEquals
        - Fn::EachMemberIn
        - Fn::Equals
        - Fn::If
        - Fn::Not
        - Fn::Or
        - Fn::RefAll
        - Fn::ValueOf
        - Fn::ValueOfAll
    - [Click AWS Rule Functions For More Information](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-rules.html)
- Mappings:         --> The Fn::FindInMap intrinsic function used
    Mapping01:                  ---> LogicalID
        Key01: 
            Name: Value01
        Key02: 
            Name: Value02
        Key03: 
            Name: Value03
- Conditions:
  - Logical ID:
    - Intrinsic function

    - Condition specific Intrinsic Functions:
        - Fn::And
        - Fn::Equals
        - Fn::If
        - Fn::Not
        - Fn::Or
- Transform:
- Resources:                                          # --> ONLY Required section in CF
  - Logical ID:
    - Type: Resource type
        - AWS::EC2::Instance
        - AWS::SQS::Queue
        - [Click for all Types](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
    - Properties:
      - Set of properties
- Outputs:
  - Logical ID:
    - Description: Information about the value
    - Value: Value to return
    - Export:
      - Name: Name of resource to export



