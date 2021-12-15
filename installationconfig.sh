#!/bin/bash

#installation script for twitburger

clear

sudo apt update
echo "Updating local repositories... Please wait."

sudo apt install python3
echo "Installing Python3... Please wait."

sudo apt install python3-pip -y
echo "Installing pip... Please wait."

export PATH=$PATH:/home/osboxes/.local/bin

pip3 install twint
echo "Installing twint... Please wait."

sudo apt install git -y
echo "Installing git... Please wait."


git clone https://github.com/rafi01234/Twitburger

