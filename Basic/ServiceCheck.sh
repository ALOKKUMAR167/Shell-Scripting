#!/bin/bash

SERVICE=$1

echo "Checking status..."
systemctl status $SERVICE

echo "Checking logs..."
journalctl -xeu $SERVICE --no-pager | tail -20

echo "Checking if port is in use..."
ss -tulnp | grep $SERVICE
