docker build -t gogs-backup .
docker run \
  -v /mnt/filer/Settings/gogs/backup:/config \
  -v /mnt/filer/Backup:/backup \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --rm -it \
  gogs-backup 

