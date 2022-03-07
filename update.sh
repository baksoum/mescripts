#!/bin/bash
        #Auteur : SOUMARE BAKARI | BAKSOUM22@GMAIL.COM |
        #Date : 2022/02/22 AM

prenom=""
nom=""
courriel=""
telephone=""

echo "Veuillez vous identifier"
echo "Prenom : " ;read prenom
echo "Nom : "; read nom
echo "Courriel : "; read courriel
echo "Telephone : "; read telephone
echo "Merci de vous avoir identifier monsieur/madame $prenom $nom "
date >> sauvegarde.txt;  echo "Usager  $prenom $nom $courriel $telephone" >>sauvegarde.txt
sleep 3
echo "Debut mise a jour"
sleep 2
apt update -y
echo "Mise a jour terminer"
sleep 2
echo "Debut mise a niveau"
sleep 2
apt upgrade -y
echo "Mise a niveau terminer"
sleep 2
echo "Installation Apache 2"
sleep 2
apt install apache2  -y
echo "Apache 2 installer avec succes"
sleep 2
echo "Activation serveur HTTP"
sleep 2
systemctl start apache2
sleep 2
echo "Activation du serveur HTTP"
sleep 2
systemctl enable apache2
sleep 2
echo "Vous etes pret a modifier votre site internet $prenom"
sleep 2
echo "Si vous avez des question, veuillez vous referez a votre superieur immediat ou encore contacter le service informatique a l'adresse suivante"
sleep 4
echo "baksoum22@gmail.com"
sleep 4
echo "MERCI POUR VOTRE COLLABORATION"
echo "A LA PROCHAINE!!"
echo "-------------------------------------------------------------------------------------------------------------"