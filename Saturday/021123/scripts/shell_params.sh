#!/usr/bin/env bash 
echo $0
echo "Filename is $1"


if [ -f $1 ]
then 
    for i in $(cat $1)
    do
        echo "Updating the packages on $i"
        sudo apt update
        echo "======================"
        echo "Installing vim package in $i"
        sudo apt install vim
    done
fi 

if [ ! -f ./$1 ]
then 
    found=$(find / -name "$1" 2>/dev/null)
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
        echo "The filename $1 doenn't exist at all"
    fi
fi

set +x