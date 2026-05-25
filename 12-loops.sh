#!/bin/bash

USERID=$(id -u)

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi
# first arg -> what are you trying to install
# second arg -> exit code

VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 is ... FAILED"
        exit 1
    else
        echo "Installing $1 is ... SUCCESS"
    fi
}

for package in $@
do
     "Instaling $package"
done