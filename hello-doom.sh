#!/bin/bash

# Read the lines from the file into an array
mapfile -t lines < doom_lines.txt

# Get the length of the array
length=${#lines[@]}

# Set the random seed for improved performance
RANDOM_SEED=$(shuf -i 0-32767 -n 1)

# Infinite loop to output random doom metal line every 5-10 minutes
while true
do
  # Generate a random index
  index=$((RANDOM_SEED % $((length-1))))

  # Output the line
  printf '%s\n' "${lines[index]}"

  # Sleep for a random duration between 5-10 minutes
  sleep $((RANDOM_SEED % 6 + 5))m
done