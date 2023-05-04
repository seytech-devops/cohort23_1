# Class Notes - 050323

## RECAP:
    - Terraform target
    - Terraform import
    - Variables (variables.tf, .tfvars)
    - Output
    - Backend (S3)
    - Modules (existing module from github)

## Today
    - Custom module
    - Functions
    - For loop (count, for_each)
    - locals
    - conditions


## Terraform built-in Functions
Terraform provides several built-in functions that you can use to manipulate and transform values, perform conditional logic, and iterate over lists or maps.

## String manipulation: 
Terraform provides several string functions, such as format:
    - join, substr, and replace, that allow you to manipulate string values. 

### For example:
you can use the format function to create a string that includes variables or use the replace function to replace a substring in a string.

## Mathematical operations: 
Terraform provides several mathematical functions, such as 
    - min, max, abs, and floor, that allow you to perform mathematical operations on values. 

### For example:
you can use the min function to determine the minimum value among a list of numbers or use the abs function to get the absolute value of a number.

## Conditional logic: 
Terraform provides several conditional functions, such as 
    - if, coalesce, and null, that allow you to perform conditional logic in your code. 

### For example:
you can use the if function to conditionally set a variable based on a condition or use the null function to provide a default value if a variable is not set.

## Iteration: 
Terraform provides several iteration functions, such as 
    - for_each, for, and flatten, that allow you to iterate over lists or maps. 

### For example:
you can use the for_each function to create multiple instances of a resource based on a map or use the flatten function to flatten a list of lists into a single list.

## Type conversion: Terraform provides several type conversion functions, such as 
    - tostring, toint, and tolist, that allow you to convert values between different types. 

### For example:
you can use the toint function to convert a string to an integer or use the tolist function to convert a map to a list of key-value pairs.

```# Create a string that includes variables
variable "region" {
  default = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "${format("web-%s", var.region)}"
  }
}
```
The format function is used to create a string that includes the value of the region variable. 
The resulting string will be in the format of web-us-west-2, 
which will be used as the value for the Name tag of the aws_instance resource.


```# Determine the maximum value among a list of numbers
variable "numbers" {
  default = [5, 10, 15, 20, 25]
}

output "max_number" {
  value = max(var.numbers)
}
```
The max function is used to determine the maximum value among the list of numbers specified in the numbers variable. 
The resulting value will be outputted as max_number.

```# Conditionally set a variable based on a condition
variable "environment" {}

locals {
  bucket_name = "${var.environment == "prod" ? "my-prod-bucket" : "my-dev-bucket"}"
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
}
```

The if function is used to conditionally set the value of the bucket_name local variable based on the value of the environment variable. If the value of environment is prod, then my-prod-bucket will be used as the value for bucket_name. Otherwise, my-dev-bucket will be used.


```# Create multiple instances of a resource based on a map
variable "instances" {
  default = {
    "web-1" = "ami-0c55b159cbfafe1f0"
    "web-2" = "ami-0323c3dd2da7fb37d"
    "web-3" = "ami-0d5d9d301c853a04a"
  }
}

resource "aws_instance" "web" {
  for_each = var.instances

  ami           = each.value
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}
```
The for_each function is used to create multiple instances of the aws_instance resource based on the instances map variable. The ami value for each instance is determined by the value of the map, and the Name tag is set to the key of the map.


```# Convert a string to an integer
variable "number" {
  default = "10"
}

output "integer_number" {
  value = toint(var.number)
}
```
The toint function is used to convert the string value of the number variable to an integer value. The resulting integer value will be outputted as integer_number.


# Create multiple S3 buckets based on a list and a condition
```
variable "bucket_names" {
  default = ["bucket1", "bucket2", "bucket3", "bucket4"]
}

resource "aws_s3_bucket" "bucket" {
  for_each = { for name in var.bucket_names : name => name if length(name) < 7 }

  bucket = each.value
}
```
The for loop is used to create multiple instances of the aws_s3_bucket resource based on the bucket_names list variable. The for_each expression creates a new map that includes only the bucket names that have a length of less than 7 characters. The resulting map will look like this: { "bucket1" = "bucket1", "bucket2" = "bucket2", "bucket3" = "bucket3" }.

The if statement is used as part of the for_each expression to conditionally include each bucket name in the new map. The length function is used to determine the length of each bucket name, and the if statement checks if the length is less than 7 characters.

Terraform will create three S3 buckets with the names bucket1, bucket2, and bucket3. The bucket4 name is excluded because it has a length of 7 characters.
