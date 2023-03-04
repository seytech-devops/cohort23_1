#!/usr/bin/env bash 

######################
# Starting Shell variable examples
# VARIABLE in SHELL are defined with uppercase
######################

# Defining number(integer) variable
NUM1=5
NUM2="5"
# read the variable value and print into terminal

echo "This is a number: $NUM1"

echo $(( $NUM1 + $NUM2 ))
echo +
echo $NUM1 + $NUM2

# # Defining a string variable
# # It gets defined in quotation marks double or single quote

STRING_VARIABLE='Kanat'
echo # print empty line
echo "Hey $STRING_VARIABLE, welcome to linux class"

# Print both variables together 
echo 
echo -e "This is a both varables: \nVariable one is $NUM1, \nVariable two is $NUM2, \nVariable three is: $STRING_VARIABLE\n"
