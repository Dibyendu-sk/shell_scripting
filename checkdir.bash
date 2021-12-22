#!/usr/bin/env bash
# author: dibyendu kar
# date: 21/10/2021
# description: this script will find directory without users

cd /home

for DIR in * # for all directories in /home
do
    CHK=$(grep -c "$DIR" /etc/passwd) # it will count the matching folder names between home and /etc/passwd
    if [ $CHK -ge 1 ]
    then
        # if body
        echo $DIR is assigned to a user
    else
        # else body
        echo $DIR is not assigned to a user
    fi
done
