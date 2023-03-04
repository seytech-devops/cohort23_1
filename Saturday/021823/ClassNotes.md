# Class Notes - 021823


# RECAP 

## Networking Commands
- ifconfig :    - it shows the itertfaces and ip address of the machine
- curl:         - request data, get data, post data
- wget          - install, get, request data
- ping:         - destination server
- nc            - netcat,   (sudo apt install netcat)      
- netstat       - shows network statics
- lsof          - list all openfile 
- traceroute    - shows the route and the number of hops to get to the destination
- ss            - shows all the sockets, similar to netstat
- mtr           - it combines both ping and traceroute
- tcpdump       - dump traffic on a network
- wireshark     - get the network traffic


## PORT, DAEMON
- 22            --> ssh         --> sshd 
- 80            --> http        --> httpd on centos machine, apache 
- 443           --> https
- 21            --> ftp
- 23            --> telnet 
- 25            --> SNMP 
- 53            --> DNS 

## Syntax 
    <source_ip>     <port>          <destination_ip>
    send data      via port          recieve data

## TCP/IP PROTOCOLS:
    - TCP       --> three way handshare, reliable 
    - UDP       --> DNS     --> broadcast, radio

## 7 OSI Model (Layers)
    - Application Layer             HTTP             --> allows to send and receive a data
    - Presentation Layer            HTTPS            --> Responsible for encrypting/decrypting data
    - Session Layer                  SSH             --> responsible for communication, sessions, close session
    - Transport Layer               TCP/UDP          --> send actual data using TCP/UDP
    - Network Layer                                  --> responsbile for networking between two devices,
                                                          route, internet  
    - Data Link Layer               MAC              --> sending data using IP, MAC address unique
    - Physical Layer                                 --> Cables, anything phyical, 


## What is hostname:
    - is a name of device, machine, server 
    - hostname      --> to find/check the hostname or define it

## What is domain?
    - defined name that will bind to IP address.
    - google.com, amazon.com

## DNS Commands
    - nslookup      --> resolving name to IP address
    - host          --> does same as nslookup
    - dig           --> does same, but also used for IP address to Hostname

## Why google.com returns different IP for different students?
    - cover later


### How do you check specific port is open and you can connect or not to it. NC command examples
    - nc -vw 2 <destination ip> <port>
    - nc -vw 2 54.235.54.123 22

### Type of return results:
    - Connection refused       : Firewall is open but the server doesn't run anything on that port
    - Time out                 : Firewall is closed, it needs to be open. 
    - succeeded                : firewall is open and something is running on that port


#### Example INFOSEC team 
    - FIREWALL

`Hey Infosec team,
 Can you please open a port for following this needed for Seytech application to work 
    
    source_ip                               destination_ip                                      port
    10.10.10.1 (jenkins server)             54.235.54.123 (seytech app server )                 8080 

Thank you,
Kanat
`

## DNS


## What is daemon?
    - it is a service/program/service for example sshd
    - I changed the ssh_config port 2222 but didn't do anything and I exit.
    - tried to ssh again abd able to login 
        - ssh -i kanat ubuntu@kanat
                `i`        --> identify which ssh key to use, it is kanat in my case
                ubuntu     --> username
                kanat      --> machine name  

## Linux commmand
    - systemctl     --> is a systemd command to manage/start/stop the service/program/daemon on Linux based OS.

#### Install apache on ubuntu
sudo apt install apache2

##### check the status 
Systemctl syntax: 
<systemctl>     <status/stop/start/restart>     <service/daemon/program name>
sudo systemctl status apache2
sudo systemctl stop apache2
sudo systemctl start apache2

rename /var/www/html/index.html file /var/www/html/index.html.old

vim index.html 
    <h1> Hello this is our Webserver hosting on our Ubuntu machine </h1>

save the file


service apache2 status   


sudo yum install httpd     --> redhat, centos 

apache2     --> webserver 
http        --> webserver 


+++++++++++++++++++++++++++++++ Setup UP SSH for ubuntu +++++++++++++++++++++++++++++++

in ubuntu machine:
    - ssh-keygen 
    - enter for defaults 
    - ls -la ~/.ssh/
        should see :
            id_rsa and id_rsa.pub
    - cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    - cat ~/.ssh/id_rsa
    - copy the content 

in your mac/windows terminal:
    - create a file <ubuntukey>
    - chmod 600 ubuntukey
    - ssh -i ubuntukey ubuntu@192.168.64.8




===============================  NEXT WEEK  =============================== 
- check homework from last week 
- Talk about the job requiments
    - take a look JD and see if we are coving the topic they are asking? 
    - will we be meet the requirements.
    - sudo details 
    - cron 
    - home work user stuff.
        - create users
        - create ssh-key 
        - set the password user
        - ssh with that user nto ubuntu 



1. Create a function that does:
    - check if user exists
    - if not create user, along with home directory, and shell
    - generate ssh-key for user
2. 