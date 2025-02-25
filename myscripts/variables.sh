#!/bin/bash
#script to show how to use variables

name="Gurvansh"
age=21
echo "My name is ${name} and my age is ${age}"
#Variable to store the output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"