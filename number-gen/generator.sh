#!/bin/bash

# Generate 100 unique random numbers between 1 and 1000
for i in {1..100}
do
  # Generate a random number and check if it is unique
  while true
  do
    num=$((RANDOM % 1000 + 1))
    if ! echo "${numbers[@]}" | grep -q -w "$num"; then
      numbers+=($num)
      echo "$num"
      break
    fi
  done
done
