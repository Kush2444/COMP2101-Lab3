#!/bin/bash

# Task 1: Get your name
myname=$USER

# Task 2: Get hostname dynamically
hostname=$(hostname)

# Task 3: Get day and time
day=$(date +%A)
time=$(date +"%I:%M %p")

# Task 4: Set the title using the day of the week
case $day in
    Monday)
        title="the Optimist"
        ;;
    Tuesday)
        title="the Realist"
        ;;
    Wednesday)
        title="the Pessimist"
        ;;
    Thursday)
        title="the Thinker"
        ;;
    Friday)
        title="the Dreamer"
        ;;
    Saturday)
        title="the Adventurer"
        ;;
    Sunday)
        title="the Relaxer"
        ;;
esac

# Construct your message
message="Welcome to planet $hostname, $title $myname!
It is $day at $time."

# Display using cowsay
echo "$message" | cowsay


