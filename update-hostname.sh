#!/bin/bash

current_hostname=$(</etc/hostname)
printf "Current Hostname: %s\n" "$current_hostname" 
read -p 'New Hostname: ' new_hostname

mv /etc/hostname /etc/hostname.backup
echo "$new_hostname" > /etc/hostname

mv /etc/hosts /etc/hosts.backup
printf '%s\n%s\n' "127.0.0.1 $new_hostname"  "$(cat /etc/hosts)" > /etc/hosts
