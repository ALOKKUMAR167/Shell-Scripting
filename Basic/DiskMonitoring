#!/bin/bash

THRESHOLD=80

df -h | grep '^/dev/' | while read line
do
    USAGE=$(echo $line | awk '{print $5}' | sed 's/%//g')
    PARTITION=$(echo $line | awk '{print $6}')

    if [ $USAGE -gt $THRESHOLD ]; then
        echo "WARNING: $PARTITION is ${USAGE}% full"
    fi
done
