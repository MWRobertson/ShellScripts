#!/bin/bash

echo -e "\e[1;42m Updating applications...\e[0m"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get clean
sudo apt-get install apt-transport-https ca-certificates

echo -e "\e[1;42m Copy common aliases...\e[0m"
sudo cp .bash_aliases ~/.bash_aliases
