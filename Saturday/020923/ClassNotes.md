# Class Notes - 020923

# Shell loops

There are two type sof loops:
    - for 
    - while

: --> colon
; --> semi-colon 

& --> ampercent     --> used to start process in background

# Pseudocode 

### Syntax for `for` loop 
for <var> read from file;
do
    echo "My name is $var"
done

# One line code
for <var> read from file; do echo echo "My name is $var"; done

### Syntax for `while` loop 

while it is true; then execute, continue, print what ever the condition is set.

# Shell debug mode
set -x     --> how to set a debug node in shell scripts

# IF statement syntax in SHELL

IF <condition> is true
then
echo "Print the <condition>
FI 

## Umask on Linux
umask ---> controls the default permission for files and directories

for `files`     --> it subracts umask number from `0666`
for `directory` --> it subracts umask number from `0777`

# TEST command in linux
`help test`         --> Helps or shows the opertors, or conditional available option.