#!/bin/bash 


echo "Using {1..5} loop " 
for item in {1..5}
do 
    echo -n" $item"  
done 
echo -e "\n"


echo "Using C-style for loop" 
for (( i =1 ; i<=10; i++))
do 
    echo -n " $i"
done 

echo -e "\nUsing seq method" 
for item in $(seq 1 5 )
do 
  echo -n " $item"
done 


counter=1
while [[ $counter -le 5 ]]
do 
    echo "Hello world" 
    ((++counter))
done