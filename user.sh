#!/bin/bash

echo -n "Enter the username : " 
read U
id ${U}
if [ $? -eq 0 ]
then
echo "User ${U} exist on the system"
else
echo "User ${U} Does exist"

echo -e "\nDou you wanna create a new user ? \n"
read n
if [ ${n} == yes ]
then
echo -e -n "\nEnter the user name you want to create\n"
read newuser
useradd ${newuser}
echo -e "\nUser ${newuser} was created succesfuly\n"
else
echo -e "\n Thank you\n"
exit 99
fi
fi