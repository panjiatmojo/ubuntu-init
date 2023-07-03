#!/bin/bash

echo "Copy Jenkins SSH Key to other Slave Node" 
read -p 'Slave Hostname: ' remote_hostname
if [ -z "${remote_hostname}" ]; then
    echo "Hostname Required!"
    exit
fi

read -p 'Slave Root Username (default root): ' remote_username
if [ -z "${remote_username}" ]; then
    echo "Username Required!"
    exit
fi

scp -r /home/jenkins/.ssh ${remote_user}@${remote_hostname}:/home/jenkins/.ssh 