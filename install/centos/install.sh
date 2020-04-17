#!/bin/bash

cd ~/install/centos/
sudo yum update
sudo yum -y install $(cat packages)

./fish-setup.sh

./../install.sh

