#!/bin/bash


yum -y install $(cat packages)

./../install.sh
./../fish-setup.sh

