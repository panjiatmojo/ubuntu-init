#!/bin/bash

useradd -s /bin/bash -m skelflo && \
usermod -aG sudo skelflo && \
cat /etc/group | grep skelflo | grep sudo && \
su - skelflo && \
ls /home