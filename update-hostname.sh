#!/bin/bash

current_hostname=$(</etc/hostname)
printf "Current Hostname: %s\n" "$current_hostname" 
read -p 'New Hostname: ' new_hostname

mv /etc/hostname /etc/hostname.backup
echo "$new_hostname" > /etc/hostname

cp /etc/hosts /etc/hosts.backup
sed -i 's/'$current_hostname'/'$new_hostname'/g' /etc/hosts 
