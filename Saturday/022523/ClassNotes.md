# Class Notes - 022523

## Three environment:
  - local
  - ubuntu 
  - digital ocean


## How are we connecting to them:
  - uisng ssh (secure shell) key

## Default ssh port
  - 22

## SSH works with key pairs
  - private 
  - public 

### How to generate ssh-key 
```
ssh-keygen
```

### ssh-key components
1. default location:
```
~/.ssh

# Permission on .ssh should be below:
chmod 700 ~/.ssh 

# Permission on private key should be below:
chmod 400 ~/.ssh/id_rsa

# Authorized keys with 600 permission
~/.ssh/authorized_keys
  ```
2. Also, there is a known_hosts file. Somethimes if the hostname change and it complains, then you need to find that in known_hosts
and delete it.
```
vim ~/.ssh/known_hosts      # inside the vim /<hostname> it is complaining
```


### Connecting two machines using ssh
Let say from local machine to remote machine
- ssh <username>@<ip>or<hostname> 

example:
  - My ubuntu machine name : kanat(hostname)
  - My ubuntu machine IP: 192.168.64.8

#### Connecting syntax
```
ssh -i <path_for_key> <username>@<username>@<ip>or<hostname> 
```

#### Linux commands to find hostname or IP
- ifconfig, ip r, ip r show, ip addr      --> for IP
- hostname, hostname -f, nslookup, dig -x 


## DNS Stuff
- There are DNS records
  - A record        --> Hostname to IP address
  - PRT record      --> IP address to Hostname
  - SOA record      --> Start of Authority 
  

## Git Recap
### Change git editor to vim
git config --global core.editor "vim"

### Git commands
- git init      --> initialize the git repository

### How to verify/check if the directory is managed my git
```
git status      --> # fatal: not a git repository (or any of the parent directories): .git 

# then initialize it
git init 

# clone (copy) repo
git clone      --> copying to local   

# how to show the history
git log        --> show the history, commit message

# how to commit
git commit -m "<your Message>"        

# How to chnage the latest commit message
git commit --amend                     --> Ammend commit message
Enter your message
git push origin --force                --> Forcing to update the message in remote 
```

git stash  -a                          --> temporarily stashing/saving changes in git memory   -a --> all including untracked files

git stash pop                          --> bring stashed changes back to git stage environment one at a time from newest to oldest
git stash apply                        --> brings everything in once


### GIT HEAD
cat .git/HEAD    --> HEAD is current branch, but actually it points to commit not to a branch

### How to check all commits, history
git reflog      --> shows everything

### Resetting, removing, repointing HEAD 
Head is a current working commit [`commit` --> version, point of changes]
```
git reset 
git reset --hard HEAD           --> resets the HEAD and your working directory.
git reset --soft HEAD           --> resets the HEAD only


# Git revert
git revert                      --> does reset the HEAD but created new commit.


# Git rebase
- is method of applying your changes on top on other. Meaning, when we run
```

### Git Rebase
```
git rebase main                --> while you are on <kanat> branch. It merges changes from main to kanat and apllies kanat's local change on top of it.


git rebase main             --> rebases local
git rebase origin/main      --> rebases with GitHub main

git pull -rebase            --> pulls origin changes and applies your local on top of it.
```


