#!/bin/bash
#String operations
myString="My name is Gurvansh"
echo "The length of the string is: ${#myString}"
#The uppercase and lowercase operations
echo "Upper case is ----------${myString^^}"
echo "Lower case is ----------${myString,,}"
#To replace a string
newString=${myString/Gurvansh/Gumpi}
echo "New string is: ${newString}"
#The slice operation
echo "The string after slice: ${newString:5:7}"