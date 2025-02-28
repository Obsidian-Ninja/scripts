#!/bin/bash
#This is a simple Password Generater
echo "Welcome! This is a simple Password Generater"
sleep 2
echo "Enter the length of your password: "
read length
for p in $(seq 1)
do
  openssl rand -base64 48 | cut -c1-$length
done
