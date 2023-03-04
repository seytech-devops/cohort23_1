# Class Notes - 020423

## VI/VIM 
- Text editor in terminal 

## What is Visual Studio Code, VSCode?
- It is a IDE(Intergrated Development Environment)
- Text editor
- It has integrated terminal.

#### Other Text Editor tools:
    - Sublime 
    - IntelliJ
    - Pycharm
    - Eclipse 
    - Nodepadd, Notepadd ++
    - Vscode --> lightweight, does not require much resource.
    - Atom 

#### Other terminal text editor :
    - vi
    - vim
    - nano

### What is Legacy
- Legacy system: something old. 
- Server1, it has been running for 3 years                   --> Rehat 6 (Legacy)
- Server1now, it just has been configured and up and running --> Redhat 8

#### What is plugin?
- add-ons
- extra packages
- extra functionalities
- extention 

I installed  basic 
    - vim --> extention(addition).

Why do we use VIM?
    - to open files, to interact with file, modification to a file

    - r     --> changes teh one character, need to be in command mode
    - wc    --> changes the word, need to be in comamnd mode, but will take you into insert mode

What is resource on compute?
- CPU, RAM, DISK(Hardware)

# Today's Topic?

## Shell scripting
- it is a shell, tool, commmand line interface that takes input from keyboard and passes to kernel.
- just sequence of commands runs from top to buttom

- #!/usr/bin/env bash  --> they called it a shebang.  It Tell the script to use which bash 
 
### - What is Kernel?
- is a heart of teh operating system
- is responsible for all drivers(module)


### File extention:
- .txt, .xml, .json, .html, .css, .jpg, .exe, .yml, .md, .doc, .sh 

- .sh --> shell

#### Ways to execute/run  shell script in terminal
    - after add `execute` permission to a file using chmod command
        - ./filename  or full path 
        - sh filename
        - bash filename
    - even if it doesn't not have a execute permission, you can still run script by:
        - sh filename
        - bash filename


## Task 
- Create first.sh script 
    - pwd, 
    - ls 
- Create second.sh 
    - put shebang 
    - run without granting an execute permission 

# Function?
    - it is logic, code that does/print, output  a specific results

for loop --> is a built in function in shell. 

for i in 1 2 3 4 5 6 7 8 9 10
do
    echo $i
done 

i --> variable in for loop 

# What is variable?
    - is a bucket that stores a value.

`$`   --> This how to read variable values
`     --> to run another command 
            EX:`cat serverlist.txt` or $(cat serverlist)


### Practice 
cp loop.sh loop.sh.bk  // Change teh content, copy is again and see the difference

Check if .bk file already exist, then create new one

1. Shell
    - basic
    - loop
    - variables

