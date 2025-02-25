#!/bin/bash
#Arrays
myArray=( 1 2 3 "Gurvansh" "Gupta")
echo "The value at index 3 is: ${myArray[3]}"

#print the array
echo "All the values in the array are: ${myArray[*]}"

#print the length of array
echo "The length of the array is: ${#myArray[*]}"

#printing the values at index 2-3
echo "The values from index 2 to 3 are: ${myArray[*]:2:2}"

#Updating an array
myArray+=( 3 4 )
echo "The new array is: ${myArray[*]}"