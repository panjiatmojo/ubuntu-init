#!/bin/bash

# Create jenkins user
adduser jenkins && \
# sudo -u jenkins bash -c './install-jenkins-sub.sh' && \
echo 'jenkins ALL = (root) NOPASSWD: /usr/bin/git, /usr/bin/docker-compose, /usr/bin/chmod' >> /etc/sudoers.d/jenkins