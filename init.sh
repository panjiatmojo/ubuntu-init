#!/bin/bash

./update-hostname.sh && \
./update-repo.sh && \
./install-docker.sh && \
./install-nginx.sh && \
./install-security.sh && \
./fix-docker-security.sh && \
./install-jenkins.sh && \
./install-java.sh && \
shutdown -r now 
