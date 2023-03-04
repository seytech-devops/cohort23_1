#!/usr/bin/env bash 

# <function name> () { 
#         <commands> 
# }

func1 () {
    echo "This is a func1"
}

func2 () {
    echo "This is a func2"
    func1
}


find_username() {
    cat /etc/passwd | cut -d ":" -f1
}

# How to call/invoke a function

install_package () {
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
            echo "The filename $1 doesn't exist at all"
        fi
    fi
}


install_package $1