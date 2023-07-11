#!/bin/bash

apt install -y ufw fail2ban lynis && \

# allow connection to port 22, 443, 80
ufw allow 22 && \
ufw allow 443 && \
ufw allow 80 && \

ufw enable && \

# validate the rule 
ufw status
