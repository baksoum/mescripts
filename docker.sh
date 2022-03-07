#!/bin/bash
    #autor : Soumare Bakari
    #Date : March 04 2022

### DOCKER INSTALLATION WITH CENTOS ###

echo -e "\nDOCKER INSTALLATION IN PROGRESS PLEASE WAIT ..."
sleep 1
echo -e "\nStep 1 : clean up the system\n"
echo -e "\nMake sure the system is clean by removing any old version of docker that might be installed\n"
echo -e "\nits ok if yum reports that none of these packages are installed.\n"
sleep 2
echo
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine


if [ $? -ne 0 ]
then 
echo -e "\n Issue with cleaning the system\n"
exit 90
fi
echo
sleep 1
echo -e "\nStep 2 : Setup docker repository\n"
yum install -y yum-utils
if [ $? -ne 0 ]
then
echo -e "\nIssue whith docker repository\n"
exit 91
fi
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
if [ $? -ne 0 ]
then
echo -e "\nIssue with docker repository\n"
exit 92
fi
echo -e "\nStep 3 : Docker installation ...\n"
echo "Start and enable the docker engine"
sleep 2
echo
yum install docker-ce docker-ce-cli contained.io -y
if [ $? -ne 0 ]
then
echo -e "\n Issue whith start and enable docker engine\n"
exit 93
fi
echo -e "\nStarting docker in progress please wait ...\n"
sleep 1
sudo systemctl start docker
if [ $? -ne 0 ]
then
echo -e "\n Issue whith starting docker. Please check and try again\n"
exit 94
fi
sleep 1
echo 
echo -e "\n Also enable the service to start at boot\n"
systemctl enable docker
if [ $? -ne 0 ]
then 
echo -e "\n Issue whith enable docker. Please solve the problem and try again\n"
exit 95
fi
echo -e "\nChech the status of the deamon to make sure it is up and running\n"
sleep 2
echo
systemctl status docker
if [ $? -ne 0 ]
then
echo -e "\nIssue whith cheking docker status\n"
exit 96
fi
echo
echo "********************************************************************************************************************"
echo "********************************************************************************************************************"
echo "********************************************************************************************************************"
echo
echo -e "\n READY TO PLAY WHIT DOCKER\n"
echo -e "\n If you have any issue not solved please contact your supervisor or send me a ticker to the following adress : \n"
echo -e "\n BAKSOUM22@GMAIL.COM\n"
echo
echo "********************************************************************************************************************"
echo "********************************************************************************************************************"
echo "********************************************************************************************************************"