#!/bin/bash

#empty array 
numbers=()

for i in {1..100}
do
  #gen random unique numbers
  while true
  do
    num=$((RANDOM % 2001 - 1000))
    if ! echo "${numbers[@]}" | grep -q -w "$num"; then
      numbers+=($num)
      break
    fi
  done
done

echo "${numbers[@]}"
