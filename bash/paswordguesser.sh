#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

read -p "guess the password" userstr
customstr="password"
i=1
while [ $i -lt 3 ]
do
  if [ $userstr != $customstr ]
  then
  {
    echo "oops! try again"
    read -p "guess the password:" userstr
  }
else
    {
      echo "success"
      break
    }
  fi
  i=$(( $i + 1 ))
done
echo "the right password is $customstr"
