#!/bin/bash
# Conditional statements - If-else
read -p "Enter your age: " age
if [ $age -gt 18 ]
then
    echo "You can vote!" 
else
    echo "You are not eligible"
fi

: << 'comment'
Other Arithmetic operators:
eq - Equal to
gt - Greater than
lt - Less than
ge - Greater than or Equal to
le - Less than or Equal to
!= - Not Equal to
== - Equal to (String Comparison)
comment
