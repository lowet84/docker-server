#!/bin/bash
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql
cat create-database.sql > init.sql
cat initdb.sql >> init.sql
