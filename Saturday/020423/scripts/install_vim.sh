#!/usr/bin/env bash 

# This script is developed by Kanat
# It will install vim package on all servers
# This requires a serverlist.txt file with the server names in it

for host in $(cat serverlist.txt)
do 
    echo "Installing vim on: $host server"
    break
    # sudo apt install vim
done
