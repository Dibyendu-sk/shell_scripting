#!/usr/bin/env bash
# author: dibyendu kar
# date: 27/10/2021
# description: creating users

# read -p "please provide a username > " user
# echo

# grep -q $user /etc/passwd
# if [ $? -eq 0 ]; then
#      # if body
#      echo $user already exists
#      echo please try another username
# else
#      # else body
#      useradd $user
#      echo $user hasbeen created.
# fi

# creating user with custom description and user id

# deep , deepa , deepx

read -p "please provide a username > " user
echo

grep -q $user /etc/passwd
if [ $? -eq 0 ]; then
     # if body
     echo $user already exists
     echo please try another username
else
     # else body
     read -p "please provide user description > " description
     read -p "do you want to specify userID (Y/N) > " ynu
     if [ $ynu == Y ]; then # because Y is a letter that's why we use ==,in case of numbers we use -eq
          # if body
          read -p "please enter userID > " userID
          grep -q $userID /etc/passwd
          if [ $? -eq 0 ]; then
               # if body
               echo ERROR-- $userID userId already exists
               exit 0
               
          else
               # else body
               useradd $user -c "$description" -u $userID # -c used for description , -u used to give custom usrId,"$description" is used because we can use spaces in description
               echo
               echo $user hasbeen created
          fi
          
     elif [ $ynu == N ]; then
          # else if body
          echo
          echo no problem we will assign a userID
          useradd $user -c "$description"
          echo
          echo $user hasbeen created
     fi
fi
