#!/usr/bin/env bash 
set -x

######################
# Shell for loop examples
######################

#example 1 

# FRUITS=("apple", "peach", "grape", "orange", "banana")

# for i in ${FRUITS[@]}
# do 
#     echo "This is a $i fruit"
# done


# install packages
# SERVERS=("server1", "server2", "server3")

# for i in ${SERVERS[@]}
# do
#     echo "Updating the packages on $i"
#     sudo apt update
#     echo "======================"
#     echo "Installing vim package in $i"
#     sudo apt install vim
# done


# Install packages on redhat servers
# pass the location to list_of_redhat_servers.txt file

# Looping the list_of_redhat_servers.txt and updates and installs vim on each server

# TEMP_SERVER_LIST=$(cat ../list_of_redhat_servers.txt)

if [ -f list_of_redhat_servers.txt ]
then 
    for i in $(cat list_of_redhat_servers.txt)
    do
        echo "Updating the packages on $i"
        sudo apt update
        echo "======================"
        echo "Installing vim package in $i"
        sudo apt install vim
    done
fi 

if [ ! -f ./list_of_redhat_servers.txt ]
then 
    found=$(find / -name 'list_of_redhat_servers.txt' 2>/dev/null)
    if [ ! -z $found ]
    then
        for i in $(cat $found)
        do
            echo "Updating the packages on $i"
            sudo apt update
            echo "======================"
            echo "Installing vim package in $i"
            sudo apt install vim
        done
    else
        echo "No file or directory exist at all"
    fi
fi

set +x