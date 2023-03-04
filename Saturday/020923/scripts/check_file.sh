#!/bin/bash 

file_name="/usr/local/bin/start_class.sh"

if [ -f $file_name ]
then 
    bash $file_name
else
    echo "It is not directory"
fi