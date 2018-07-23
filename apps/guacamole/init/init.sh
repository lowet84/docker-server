#!/bin/bash

if [ ! -f "/data/initialized" ]; then
  echo "Initializing guacamole database"
  GO=1
  while true; do
    mysql -h mysql -u root -p$PASSWORD < /init.sql
    if [ $? -eq 0 ]; then
      echo "Database initialized"
      break
    else
      echo "Retrying in 10s"
      sleep 10s
    fi
  done
  touch /data/initialized
else
  echo "Guacamole db already initialized"
fi
