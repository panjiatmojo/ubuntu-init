#!/bin/bash

echo "Copy Jenkins SSH Key to other Slave Node" 
read -p 'Slave Hostname: ' remote_hostname
if [ -z "${remote_hostname}" ]; then
    echo "Hostname Required!"
    exit
fi

read -p 'Slave Root Username (default root): ' remote_username
if [ -z "${remote_username}" ]; then
    remote_username=root
    echo "# Set username as root"
fi

echo "# Copying ssh key to remote server"
scp -r /home/jenkins/.ssh ${remote_user}@${remote_hostname}:/home/jenkins/ && \

echo "# Change ssh key ownership on remote server"
ssh ${remote_user}@${remote_hostname} 'bash -s' < "./change-ownership.sh"
