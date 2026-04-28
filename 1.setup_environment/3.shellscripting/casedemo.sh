#!/bin/bash 

echo "--------------[Case Demo]----------"
read -p "Enter Value A: " a 
read -p "Enter Value B: " b 
read -p "Choose operator(+,-,*,/): " option

case $option in 
    +) 
    echo "-----Addition Operation-----" 
     result=$(echo "$a + $b" | bc)
     echo "Result = ${result}"  
    ;; 
    -) 
    echo "-----Substraction Operation-----" 
     result=$(echo "$a - $b" | bc)
     echo "Result = ${result}"  
    ;; 
    \*) 
    echo "-----Muliplication Operation-----" 
     result=$(echo "$a * $b" | bc)
     echo "Result = ${result}"  
    ;; 
    /) 
    echo "-----Division Operation-----" 
     result=$(echo "scale=2; $a / $b" | bc)
     echo "Result = ${result}"  
    ;; 
    
    *)
    echo " ⚠️ Invalid operation Try again  "
    ;; 

esac 
echo "Thank you for using calculator" 