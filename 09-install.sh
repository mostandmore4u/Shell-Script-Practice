#!/bin/bash

USERID=$(id -u)

#check root acess or not
if [ $USERID -ne 0 ]; then
  echo "Please run this script with root access"
  exit 1
fi

#echo "I am continuing..."
echo " Installing mySQL"
dnf install mysql -y

if [ $? -ne 0 ]; then
echo "Installing mySQL is .... FAILED"
exit 1
else 
echo "Installing mySQL is .... SUCCESS"
fi