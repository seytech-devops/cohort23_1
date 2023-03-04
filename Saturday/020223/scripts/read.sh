#!/bin/bash
#read -p "Do you want to continue? (y/n) " choice
#if [ $choice = "y" ]
#then
#    echo "Continuing..."
#    # Perform action here
#else
#    echo "Exiting..."
#fi


# Define your function
Hello () {
 echo  "Hello World"
}

#Hello

Hello () {
    echo "Hello World $1 $2"
}

Hello
