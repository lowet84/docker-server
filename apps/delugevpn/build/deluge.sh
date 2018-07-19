#!/bin/bash

if [ -f /config/auth ]
then
  echo "auth exists, does nothing"
else
  echo "writing initial deluge credentials"
  echo "deluge:deluge:10" > /config/auth 
fi

deluged -d -c /config -L info -l /config/deluged.log &
deluge-web -c /config
