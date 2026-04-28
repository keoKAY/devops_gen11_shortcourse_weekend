#!/bin/bash

read -p "Enter your age: " age 
if (( $age >= 18 )); then 
    echo "You an adult " 
else 
    echo "Your age is less than 18" 
fi 