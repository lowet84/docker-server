#!/bin/bash
while true; do 
  docker exec -i gogs sh -c 'cd .. && USER=git ./gogs backup --target /backup/'

  PARENT=$(gdrive list -q "name contains 'GogsBackup'" --no-header | cut -d" " -f 1)
  FILE=$(ls -tr /backup | grep gogs | tail -1 )
  echo $FILE
  gdrive upload --parent $PARENT /backup/$FILE  

  sleep 24h
done

