#!/bin/bash

# Create jenkins user
adduser jenkins && \
su jenkins && \
ssh-keygen -t rsa -b 4096 -m PEM && \
cp ./.ssh/id_rsa.pub ./.ssh/authorized_keys && \
chown jenkins:jenkins ./.ssh/authorized_keys && \
cat ./.ssh/id_rsa && \
echo 'jenkins ALL = (root) NOPASSWD: /usr/bin/git, /usr/bin/docker-compose, /usr/bin/chmod' >> /etc/sudoers.d/jenkins-levero && \

