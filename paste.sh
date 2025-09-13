#!/bin/bash

PASTE_ADDRESS="http://172.16.0.245/paste/"

function die {
    echo $*
    exit 1
}

function hastebin {
   format=""
   curl -X POST -s --data-binary "@$1" ${PASTE_ADDRESS}documents | awk -v addr="$PASTE_ADDRESS" -v format="$format" -F '"' '{print addr$4format}'
}

if [ -f "$1" ]; then
    hastebin $1
else
    die "usage $0 file.log"
fi
