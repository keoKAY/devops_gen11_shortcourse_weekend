#!/bin/bash

fruits=("banana" "apple" "strawberry" "pinapple")
# Accessing the element 
echo "First Item is : ${fruits[0]}" 
echo "Second Item is : ${fruits[1]}" 

echo "Show all values of array as string : ${fruits[@]}"
echo "Total number of element: ${#fruits[@]}" 

# Appending element to the array 
fruits+=("last_item")
echo -e "\n + Using looop with array " 
for item in "${fruits[@]}"; 
do 
 echo "create account for : $item"
done 

# TODO: 
# 1. Create 5 different users from array 
# 2. Set default password for their account 
# 3. Force them to change their password when they first login 

