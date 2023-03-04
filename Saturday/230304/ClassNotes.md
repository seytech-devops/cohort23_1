# Class Notes - 030423

# Create Centos VM in Digital Ocean
    name = centos-main

## How to ssh into centos-main 
    ssh root@<ip_address> 
    ssh root@<ip_address>  -i <path_for_private_key>         --> specify specific key 

## How do we update system on centos (redhat)
    - yum update -y                                          --> y sands for yes
    - yum repo list                                          --> lists the yum repositories

## Install httpd 
    - yum install httpd

## How to check if httpd installed?
    - yum list installed | grep httpd                       --> list all installed packages via yum
    - rpm -qa | grep httpd                                  --> checks if httpd installed

## How to check if httpd up and running?
    - httpd == apache == nginx = webserver

    - systemctl staus httpd                                 --> to check the httpd status
    - systemctl start httpd                                 --> starts
    - systemctl stop httpd                                  --> stops
    - systemctl status httpd                                --> running 
    - systemctl restart httpd                               --> restart service
    - systemctl enable httpd                                --> enabls service to start after reboot
    - reboot                                                --> restart machine 
    - uptime                                                --> check how long the system is up and running from last reboot 

## Changed directory to cd /var/www/html/
    - cd /var/www/html/                                     --> changes directory to /var/www/html 
    - vim index.html                                        --> cretes index.html file    

## How do remove/uninstall httpd 
    - yum remove httpd

## How to check the hostname and change it permenantly 
    - hostname                                             --> check hostname
    - hostnamectl set-hostname kanat                       --> sets hstname permenantly, it will there even after reboot



## Create a new user on Centos machine
    - useradd aidar -d /home/aidar -s /bin/bash 

## Create password for aidar
    - passwd aidar 

## Modify sshd_config 
    - vim /etc/ssh/sshd_config 
    - change following to yes
        - PasswordAuthentication yes

## Restart ssh service
    - systemctl restart sshd 

## Try to login as aidar using password 
    - ssh aidar@<ip>

## Check the log if aidar is able to login
    - tail -f /var/log/secure                   --> location of file that rack the users login to system
    - tail -f /var/log/message                  --> all the system logs 


## Added sudo comamnds for aidar so it can run some super user commands
    - /etc/sudoers                              --> main sudoers file to grant permission for user
    - /etc/sudoers.d/user-sudo                  --> add aidar with specific command
    - su aidar                                  --> switch to new user 

## How to check if aidar has any sudo permission
    - sudo -l                                   --> lists all the commands aidar can run as sudo 


# Disk management on Linux

## How to check the disk space 
    - df -h                                     --> check the disk space on the system

## Logical Volume Managemenet 
    - yum install lvm2                          --> install lvm2 package

### LVM commands
    - pvscan                                    --> physical volume scan

    - pvcreate /dev/sda                         --> create physical volume from /dev/sda
    - vgcreate backup-vol /dev/sda              --> create volume group
    - lvcreat -n backup-lv  -L 10GB backup-vol  --> create logical volume 
    - mkfs.ext4 /<path_for_logical_volume>      --> make file system
    - mount <lv_path>   </mnt/backup>           --> mount to /mnt/backup 


### Linux filesystem
    - ext2, ext3, ext4, xfs                     --> file types in linux

## vim /etc/fstab                              
    - /etc/fstab                                --> file to make mount point persistent on reboot
    - mount                                     --> shows all the mount points current on the system
