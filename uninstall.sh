#!/bin/bash

# stop jenkins service
sudo systemctl stop jenkins

# remove jenkins service
sudo rm -r /etc/systemd/system/jenkins.service

# deleting jenkins user using root
sudo su - root -c "userdel -r jenkins | rm -r /home/jenkins"
