#!/bin/sh

RES=$(curl -f -m 10 https://ifconfig.co/json)
WORKING=$(echo $RES | grep ipredator.se)

if [ -z "$WORKING" ]; then
echo "FAIL" >> /health.log
exit 1
else
echo "OK" >> /health.log
exit 0
fi
