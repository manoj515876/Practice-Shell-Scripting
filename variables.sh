#!/bin/bash

# Printing Hello World!
echo "Hello World!"

# Storing Manoj in variable
name=Manoj
echo "Hello $name"

# Command lines Arguments $1->First argument $2->Second argument
echo "Hi $1"
echo "Hi $2, How can I help you"

# Taking username and Password from user.
echo "Enter your username"
read USERNAME
echo "Your username is $USERNAME"

echo "Enter your password"
read -s PASSWD

# Any output can store in a variable we can use $() for example 
TIMESTAMP=$(date)
echo "Script excuted at $TIMESTAMP"

# Taking 2 numbers and printing it's sum
NUMBER1=$1
NUMBER2=$2
SUM=$(($NUMBER1+$NUMBER1))
echo "Sum of $NUMBER1 and $NUMBER2 is $SUM"



