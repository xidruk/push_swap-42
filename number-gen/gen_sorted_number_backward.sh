#!/bin/bash

# empty array
numbers=()

while [ ${#numbers[@]} -lt 100 ]; do
  num=$((RANDOM % 2001 - 1000)) 
  
  #check if unque 
  if ! [[ " ${numbers[@]} " =~ " ${num} " ]]; then
    numbers+=($num)
  fi
done

#sort in backward order
sorted_numbers=$(echo "${numbers[@]}" | tr ' ' '\n' | sort -nr | tr '\n' ' ')
echo "$sorted_numbers"
