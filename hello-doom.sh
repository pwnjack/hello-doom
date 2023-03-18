#!/bin/bash

# Read the lines from the file into an array
readarray -t lines < doom_lines.txt

# Get the length of the array
length=${#lines[@]}

# Set the random seed for improved performance
RANDOM=$$$(date +%s)

# Infinite loop to output random doom metal line every 5-10 minutes
while true
do
  # Generate a random index
  index=$((RANDOM % length))
  
  # Output the line
  printf '%s\n' "${lines[index]}"
  
  # Sleep for a random duration between 5-10 minutes
  sleep $((5 + RANDOM % 6))m
done