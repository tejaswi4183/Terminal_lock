#!/bin/bash
read -r -p "Enter password:" password
echo
sed "s/admin/$password/g" password.sh > login12
rm password.sh
sudo chmod +x login12
sudo mv login12 /usr/bin/
sudo echo login12 >> $HOME/.bashrc
cd ..
sudo rm -r Terminal_lock
