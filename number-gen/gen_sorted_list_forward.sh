#!/bin/bash

# empty array 
numbers=()

# Generate 100 unique random numbers between 1 and 1000
while [ ${#numbers[@]} -lt 500 ]; do
  num=$((RANDOM % 2001 - 1000)) #gen random numbers between -1000 and 1000
  
  # check the number is unique 
  if ! [[ " ${numbers[@]} " =~ " ${num} " ]]; then
    numbers+=($num)
  fi
done

# sort the list in forward order
sorted_numbers=$(echo "${numbers[@]}" | tr ' ' '\n' | sort -n | tr '\n' ' ')
echo "$sorted_numbers"
