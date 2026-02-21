#!/bin/bash

USERNAME=$1

if id "$USERNAME" &>/dev/null; then
    echo "User already exists!"
else
    useradd -m $USERNAME
    echo "User created successfully."
fi

echo "Enter password:"
read -s PASSWORD

useradd -m $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd
