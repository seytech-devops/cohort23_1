#!/usr/bin/env bash

# VARIABLES
# MYNAME="Mirbek"


#read --> is a builtin function, it waits for a inpaut for user
echo -n "Enter your name: "
read name
compare_name=""

echo "You entered: $name"

if [[ $name == "Batyr" ]]
then 
    echo "Your name is $name"
else
    echo "The name doesn't match $name"
fi
