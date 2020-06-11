#!/bin/bash

# Defining an array
names=(Amit Nidhi Ratul Rachi)

# Accessing elements by indexing
echo ${names[0]}
echo ${names[1]}
echo ${names[2]}
echo ${names[3]}

echo
# Setting element values
names[0]=Nidhi
names[1]=Rachi
names[2]=Amit
names[3]=Ratul

# Use: ${arr[@]} to get all elements
for name in ${names[@]}; do
    echo "Welcome $name"
done

echo
# Use: ${#arr[@]} to get the count of elements (length of array)
echo Number of elements in array: ${#names[@]}

exit 0