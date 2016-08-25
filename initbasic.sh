#!/bin/bash

echo "Updating applications..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get clean
sudo apt-get install apt-transport-https ca-certificates
