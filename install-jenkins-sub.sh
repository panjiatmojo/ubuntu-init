#!/bin/bash

# execute command as sub user
cd ~ && \
ssh-keygen -t rsa -b 4096 -m PEM && \
cp ./.ssh/id_rsa.pub ./.ssh/authorized_keys && \
chown jenkins:jenkins ./.ssh/authorized_keys && \
cat ./.ssh/id_rsa