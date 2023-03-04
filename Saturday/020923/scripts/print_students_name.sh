#!/usr/bin/env bash 

# Looping the students.txt file 
# printing each student name

for name in $(cat students.txt)
do 
    echo "My name is: $name"
done

