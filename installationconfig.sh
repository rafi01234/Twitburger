#!/bin/bash

#installation script for twitburger

clear

#update local repositories
sudo apt update
echo "Updating local repositories... Please wait."

#install python3
sudo apt install python3
echo "Installing Python3... Please wait."

#install pip
sudo apt install python3-pip -y
echo "Installing pip... Please wait."

#set python PATH (sometimes doesn't work otherwise)
export PATH=$PATH:/home/osboxes/.local/bin

#install twint via pip
pip3 install twint
echo "Installing twint... Please wait."

#install lolcat & figlet
sudo apt install lolcat figlet -y
echo "Installing lolcat & figlet... Please wait."

#install git
sudo apt install git -y
echo "Installing git... Please wait."

#clone twint git & installing again (redundancy measure, sometimes pip doesn't work fully)
git clone https://github.com/twintproject/twint.git
cd twint
#set python PATH again (again sometimes doesn't work otherwise)
export PATH=$PATH:/home/osboxes/.local/bin
#install requirements
pip3 install . -r requirements.txt
#install aiohttp version 3.7.0 (latest version has errors)
pip3 install aiohttp==3.7.0

#run setup.py to install twint
sudo python3 setup.py install

cd ..

#clone Twitburger git
git clone https://github.com/rafi01234/Twitburger

cd Twitburger

#run Twitburger
bash pulldownmenu.sh
