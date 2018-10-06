#!/usr/bin/env bash
# File: guessinggame.sh

function howmanyfiles {
    local var=$( ls | wc -l )
    echo $var
}


# getting user guess
echo "how many files are in the current directory"
read response
echo "your guess: $response"
flag=0

# main loop
while [[ flag -eq 0 ]]
do
  # getting true num of files
  num_files=$(howmanyfiles)

  if [[ $response -eq $num_files ]]
  then
    echo "Good job! Congratulation."
    let flag=1
  elif [[ $response -gt num_files ]]
  then
    echo "Your guess is too high, try again: "
    read response
  else
    echo "Your guess is too low, try again: "
    read response
  fi
done
