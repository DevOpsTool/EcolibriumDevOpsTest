#!/bin/bash
echo "ip or hostname: $1"
if curl -I "https://$1/" 2>&1 | grep -w "200\|301" ; then
    echo "webserver is up"
else
    echo "webserver is down"
fi
