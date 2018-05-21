#/bin/bash
PASSWD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1) 
PATH=$(cat .env | grep SETTINGS_PATH) 
echo $PATH
