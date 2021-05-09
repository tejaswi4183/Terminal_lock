#!/bin/bash
echo -n  "enter password:"
read -s  password
echo
if [[ $password == "admin" ]]
then
figlet "welcome"
else
figlet "you are not the authorised user"
sleep 3
kill $(pgrep terminal)
fi
