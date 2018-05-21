#/bin/sh
PASSWD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1) 
SETTINGS=$(cat .env | grep "SETTINGS_PATH" | sed -e "s/SETTINGS_PATH=//g" ) 
mkdir -p $SETTINGS/registry/auth
docker run --entrypoint htpasswd registry:2 -Bbn default $PASSWD > $SETTINGS/registry/auth/htpasswd
echo "Password is: $PASSWD"
