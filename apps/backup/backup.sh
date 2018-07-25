#!/bin/sh

TIME=$(date '+%Y-%m-%d-%H%M%S')
FILENAME=backup_${TIME}.7z
7z a /backup/${FILENAME} -r .
