#!/bin/bash
read -p "Do you want to continue? (y/n) " choice
if [ $choice = "y" ]
then
    echo "Continuing..."
    # Perform action here
else
    echo "Exiting..."
fi
