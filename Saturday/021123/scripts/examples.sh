# Variables

# IF statement syntax
# if [ <some test> ]
# then
# <commands>
# fi

# example: if statement
# Basic if statement
# if [ 100 -gt 100 ]
# then
#     echo Hey that\'s a large number.
#     pwd
# fi

# # Basic if statement with variables comparison
# num=100
# if [ $num1 -gt 100 ]
# then
#     echo Hey that\'s a large number.
#     pwd
# fi

# with debug mode set
#!/bin/bash
# set -x 
# num=101
# if [ $num -gt 100 ]
# then
#     echo Hey that\'s a large number.
#     pwd
# fi
# set +x

# set -x 
# num=101
# if [ $num -gt 100 ]
# then
#     echo Hey that\'s a large number.
#     pwd
# fi
# set +x

# test 001 = 1   // string comparison
# echo $?
# test 001 -eq 1  // numeric comparison
# echo $?
# touch myfile
# test -s myfile  // file size
# echo $?
# ls /etc > myfile
# test -s myfile
# echo $?

#!/bin/bash
# Nested if statements
# if [ $1 -gt 100 ]
# then
#   echo Hey that\'s a large number.
#   if (( $1 % 2 == 0 ))
#   then
#       echo And is also an even number.
#   fi
# fi


#!/bin/bash
# else example
# if [ $# -eq 1 ]
# then
# nl $1
# else
# nl /dev/stdin
# fi

#!/bin/bash
# elif statements
# if [ 10 -ge 18 ]
# then
#     echo You may go to the party.
# elif [ 20 == 'yes' ]
# then
#     echo You may go to the party but be back before midnight.
# else
#     echo You may not go to the party.
# fi




################################  Arguments ###############################


#!/bin/bash
# echo $0           --> shows itself kanat

#!/bin/bash
# echo $1           --> first argument  kanat sultan "kanat sultan"

# echo "Username: $1";
# echo "Age: $2";
# echo "Full Name: $3";


#!/bin/bash
# echo "Name: $1"
# echo "Street: $2"
# echo "City: $3"
# echo "State/Province/Territory: $4"
# echo "Zip/Postal code: $5"

# i=1;
# for user in "$@" 
# do
#     echo "Username - $i: $user";
#     i=$((i + 1));
# done

################################  Functions ###############################

# FunctionName(){program statements}

# <function name> () { 
#         <commands> 
# }

# <function name> () { <commands>; }

# help(){ echo "Hi students"; }
# help 

# my_function () { echo "Hello I'm a function"; echo "Bye!"; }


# arguments () {
#         echo The function location is $0
#         echo There are $# arguments
#         echo "Argument 1 is $1"
#         echo "Argument 2 is $2"
#         echo "<$@>" and "<$*>" are the same.
#         # echo List the elements in a for loop to see the difference!
#         # echo "* gives:"
#         # for arg in "$*"; do echo "<$arg>"; done
#         # echo "@ gives:"
#         # for arg in "$@"; do echo "<$arg>"; done
# }

# arguments kanat sultan
