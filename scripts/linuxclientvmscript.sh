#!/bin/sh

## Argument 1 will be username for Client VMs  ##

## To execute this script run sudo su -c'sh linuxclientvmscript.sh ClientVMsUsername'  ##

# Allow sudo with out passoword
echo "$1" "ALL = (ALL) NOPASSWD:ALL" >> /etc/sudoers
rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#rpm -Uvh epel-release-latest-7*.rpm 
systemctl stop firewalld
systemctl disable firewalld


exit 0
