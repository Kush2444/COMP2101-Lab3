#!/bin/bash
# This is a script to practice doing testing in bash scripts

# This section demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
test -e /etc/resolv.conf && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

# TASK 1: Is it a regular file?
[ -f /etc/resolv.conf ] && echo "/etc/resolv.conf is a regular file"

# TASK 2: Is it a symbolic link?
[ -L /etc/resolv.conf ] && echo "/etc/resolv.conf is a symbolic link"

# TASK 3: Is it a directory?
[ -d /etc/resolv.conf ] && echo "/etc/resolv.conf is a directory" || echo "/etc/resolv.conf is not a directory"

# TASK 4: Is it readable?
[ -r /etc/resolv.conf ] && echo "/etc/resolv.conf is readable"

# TASK 5: Is it writable?
[ -w /etc/resolv.conf ] && echo "/etc/resolv.conf is writable"

# TASK 6: Is it executable?
[ -x /etc/resolv.conf ] && echo "/etc/resolv.conf is executable" || echo "/etc/resolv.conf is not executable"

# Tests if /tmp is a directory
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

# TASK 4: Is /tmp readable?
[ -r /tmp ] && echo "/tmp is readable"

# TASK 5: Is /tmp writable?
[ -w /tmp ] && echo "/tmp is writable"

# TASK 6: Can we access /tmp?
[ -x /tmp ] && echo "/tmp can be accessed (executable)"

# Tests if one file is newer than another
# TASK 7: Compare file dates
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"

# This section demonstrates numeric tests in bash

# TASK 1: Get user input
read -p "Enter the first number: " firstNumber
read -p "Enter the second number: " secondNumber

[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"
[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"

# TASK 2: Even or odd
[ $((firstNumber % 2)) -eq 0 ] && echo "The first number is even" || echo "The first number is odd"
[ $((secondNumber % 2)) -eq 0 ] && echo "The second number is even" || echo "The second number is odd"

# TASK 3: Is second a multiple of first?
[ $((secondNumber % firstNumber)) -eq 0 ] && echo "$secondNumber is a multiple of $firstNumber" || echo "$secondNumber is NOT a multiple of $firstNumber"

# This section demonstrates testing variables

# TASK 1: Show content of USER if not empty
[ -n "$USER" ] && echo "USER is set to: $USER"

# TASK 2: Tell if USER exists but is empty
[ -v USER ] && [ -z "$USER" ] && echo "USER exists but is empty"

# TASK 3: Use != operator
a=1
b=01

# TASK 4: Ask user for new values
read -p "Enter value for a: " a
read -p "Enter value for b: " b

[ "$a" != "$b" ] && echo "$a is not alphanumerically equal to $b" || echo "$a is alphanumerically equal to $b"

