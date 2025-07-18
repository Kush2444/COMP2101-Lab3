#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!

EOF

# Pick the secret number and save it
secretnumber=$(($RANDOM % 10 + 1)) # save our secret number to compare later

# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Tell the user if their guess is too low, or too high after each incorrect guess

while true; do
  read -p "Give me a number from 1 to 10: " userguess

  # Task 1: Check if input is blank
  if [ -z "$userguess" ]; then
    echo "You didn't enter anything. Please enter a number."
    continue
  fi

  # Task 2: Check if input is a valid number between 1 and 10
  if ! [[ "$userguess" =~ ^[0-9]+$ ]] || [ "$userguess" -lt 1 ] || [ "$userguess" -gt 10 ]; then
    echo "That is not a valid number between 1 and 10. Try again."
    continue
  fi

  # Task 3: Check guess against the secret number
  if [ "$userguess" -lt "$secretnumber" ]; then
    echo "Too low!"
  elif [ "$userguess" -gt "$secretnumber" ]; then
    echo "Too high!"
  else
    echo "You got it! Have a milkdud."
    break
  fi
done
