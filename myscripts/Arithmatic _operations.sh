#!/bin/bash
#Arithmatic operations
x=10
y=2

let sub=$x-$y
let mul=$x*$y

echo "Subtraction : $sub"
echo "Multiply : $mul"
echo "Addition : $(($x+$y))"