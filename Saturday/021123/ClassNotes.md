# Class Notes - 021123

# RECAP:
    - Shell scripting:
        - variables
        - for loop
        - while loop 
        - if statement, if --> else, if --> elif --> else
        - read          --> built in function --> reads from user input 
        - debug         --> set -x 
        - operators
        - help test     --> 
    - Run subcommand within a script:
        - `command`     --> ex: `cat serverlist.txt`
        - $(command)    --> ex: $(cat serverlist.txt)
    - Source or execute the script:
        - source /usr/local/bin/<script_name>
        - ./usr/local/bin/<script_name>
        - bash /usr/local/bin/<script_name>
        - sh /usr/local/bin/<script_name>
    - Umask 
        - 0666          --> for files default file permission
        - 0777          --> for directories default directory permission

# TODAY 
    - Shell scripting 
        - operators
        - arguments, parameters
        - functions
        - ssh-key


## Creating directory structure
    - mkdir -p /seytech-devops/seytech/devops/Saturday/021123/scripts
    - cd /seytech-devops/seytech/devops/Saturday/021123/scripts
    - pwd 
    - touch shell_variables.sh
    - chmod +x shell_variables.sh

## Shell variables
- Please see the script `shell_variables.sh`

## Shell arguments
$0          --> shows the script name itself
$1          --> defines the first argument
$2          --> defines the second argument

## Function 
# <function name> () { 
#         <commands> 
# }

- is a piece of code that can be used again and again. It is a reusable code.
- Just need to call the function name to invoke/call teh function.



# SSH KEY CONCEPT 
`.ssh`                              --> folder must have a permission 0700 
`.ssh/authorized_keys`              --> file must have a permission 0600


ssh key:
    - works based on key pairs:
        - private key   ex: id_rsa 
        - public key    ex: id_rsa.pub 

## How to generate a ssh-key:
    `ssh-keygen `       --> to generate a key. This will always generate a key pairs,
                                - private and public key 

## TO BE Cnntinued 