# Class Notes - 20230301

### ABOUT THIS LAB
In this lab, we'll go over I/O redirection, file permissions, and using the ssh tool. These are skills that will serve you well in your career as a DevOps engineer. Once complete, you’ll have a solid understanding of how to use these tools.



### Learning objectives
- Enable SSH to Connect Without a Password from the `root` User on `VM1` to the `root` User on `VM2`
- Copy All tar Files from `/root/Lab/Linux_Labs/Lab_1/home/root/` on `VM1` to `/root/` on `server2`, Extract Them and let's run the first script: 
- Set the Umask So That New Files Are Only Readable and Writeable by the Owner
- Verify the `/home/dev/deploy.sh` Script Is Executable and Run It

***
## _Steps_:
### 1.
```sh
create VM1 (New-York DC location, SSD, $6/monthly, Rename your long name to VM1, cat ~/.ssh/id_rsa.pub)
While creating the VM1 -> create a ssh key (paste copied pub key and give that a name "local_to_VM1")
0.1. To verify pls connect from your local machine to the VM1 using:

ssh root@<ipv4>
1.Generate ssh key in VM1 
2. Create user called     <<dev>>

```
## 2.
```sh
1. Go to the digitalocean dashboard -> create a droplet
2. name=VM2, ssh-add (VM1_to_VM2) cat ~/.ssh/id_rsa.pub -> copy
3. Paste that ssh pub key in digitalocean while creating a second VM2
ssk key 'VM1_to_VM2'
4. Verify that you can connect from your VM1 to VM2
```
## 3. (we are in VM1)
```sh
useradd dev
passwd dev  
***to make a user passwordless type: sudo passwd -d james***
cat /etc/passwd | grep dev
groupadd -g 1007 sysadmins
sudo tail /etc/group
id dev (you are still in your default group)

====
or better way:
useradd -g admin dev

```
## 4.(we are still in VM1)

```sh
a. Clone git repo "Lab" from "seytechdevops" git account
b. Navigate to the location of tar file: 'lab1_tas.tar.gz' i.e. /root/Lab/Linux_Labs/Lab_1
c. Extract the archived and zipped file using tar command: 
tar -xzvf lab1_task.tar.gz
```
```
The differences between tar and zip:
1) tar is archiver whereas zip is as archiver as well compressor
2)tar preserves(keep) the metadata about a file and dir e.g. sticky bit of the file
3) tar with compression archive multiple files onto  one file and then compress this single, whereas zip compress one by one then makes it's archive.

- -c: Create an archive.
- -z: Compress the archive with gzip.
- -v: Display progress in the terminal while creating the archive, also known as “verbose” mode. The v is always optional in these commands, but it’s helpful.
- -f: Allows you to specify the filename of the archive.
Let’s say you have a directory named “stuff” in the current directory and you want to save it to a file named archive.tar.gz. You’d run the following command:

Examples:
tar -czvf archive.tar.gz stuff

ex: 
/scripts/ (directory with bunch of scripts inside)
tar -cvzf lab1_task.tar.gz scripts

EXTRACT the archived file:
tar -xzvf lab1_task.tar.gz
```


## 5.(We are in VM1) 

```sh
1. Copy the directory "script" to the VM2
use 'scp' or 'rsync' commands:
ex:
scp -r ./scripts/ root@206.189.204.122:/root
2. Verify on your VM2 that it was successfully copied to your machine
```

## 6.(we are in VM1) 
```sh
1. Copy the directory 'bash_scripts' to the VM2 using "rsync" command:
ex:
rsync -avzh ./bash_scripts root@206.189.204.122:/root
2. Verify on VM2 that it was successfully copied to your VM
```
 What is the difference between scp and rsync? 

Rsync (Remote Sync) is a most commonly used command for copying and synchronizing files and directoriesremotely as well as locally in Linux/Unix systems. With the help of rsync command you can copy and synchronize your data remotely and locally across directories, across disks and networks, perform data backups and mirroring between two Linux machines.

Some advantages and features of Rsync command

It efficiently copies and sync files to or from a remote system.
Supports copying links, devices, owners, groups and permissions.
It’s faster than scp (Secure Copy) because rsync uses remote-update protocol which allows to transfer just the differences between two sets of files. First time, it copies the whole content of a file or a directory from source to destination but from next time, it copies only the changed blocks and bytes to the destination.
Rsync consumes less bandwidth as it uses compression and decompression method while sending and receiving data both ends.

rysnc can be useful to run on slow and unreliable connections. So if your download aborts in the middle of a large file rysnc will be able to continue from where it left off when invoked again.
Use rsync -vP username@host:/path/to/file .
The -P option preserves partially downloaded files and also shows progress.
As usual check man rsync
